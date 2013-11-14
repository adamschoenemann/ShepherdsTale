using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using Wolf;

/**
 * Controls the wolf
 * TODO: AI still needs some work.
 * 			 Patrolling still needs to be implemented.
 * 			 Listening and luring.
 * 			 Attacking and dying. <---- this
 * 			 Navigating around obstacles
 * @type {[type]}
 */
namespace Wolf
{
	public enum State {Idle, Suspicious, Alerted, Engaging, Attacking, Returning};
}


public class WolfController : MonoBehaviour
{

	protected Vector3 defaultPosition;
	protected Quaternion defaultRotation;
	
	private State _state = State.Idle;
	public State state
	{
		get
		{
			return _state;
		}
		protected set
		{
			if(_state != value)
			{
				OnStateChange(_state, value);
				_state = value;
			}
		}
	}

	protected GameObject player;
	protected PlayerController playerController;
	protected Vector3 lastKnownPlayerPos;
	protected Dictionary<string, Collision> collisionFlags = new Dictionary<string, Collision>();

	public float hearing = 2.0f;
	public float seeingThresh = 10.0f;
	public float fieldOfView = 100.0f;
	public float turnSpeed = 5.0f;
	public float playerDistanceThresh = 15.0f;
	public float moveSpeed = 1.0f;
	public float nearThresh = 1.7f; // Adjust by hand for now
	public float distanceFromHomeThresh = 15.0f;

	protected Timer suspiciousTimer;
	protected Mortal mortal;

	private Timer attackTimer;

//============================================================================//
//============================== METHODS =====================================//
//============================================================================//

//================================ CORE ======================================//
	protected virtual void Awake()
	{
		state = State.Idle;
		player = GameObject.FindWithTag(Tags.player);
		playerController = player.GetComponent<PlayerController>();
		mortal = GetComponent<Mortal>();

		mortal.onDeathHandler = OnDeath;

		defaultPosition = transform.position;
		defaultRotation = transform.rotation;
	}

	protected virtual void Update()
	{
		state = UpdateState();
		TakeAction();
	}

	protected virtual State UpdateState()
	{
		switch(state)
		{
			case State.Idle:
				if(IsPlayerAudible()) return State.Suspicious;
				if(IsPlayerVisible()) return State.Alerted;
				return State.Idle;
				break;

			case State.Suspicious:
				if(IsPlayerVisible()) return State.Alerted;
				if(IsPlayerAudible()) return State.Suspicious;
				if(IsSuspiciousTimerDone()) return State.Returning;
				return State.Suspicious;
				break;

			case State.Alerted:
				if(IsPlayerVisible() == false) return State.Suspicious;
				if(IsTooFarAwayFromHome()) return State.Returning;
				if(IsPlayerTooFarAway()) return State.Returning;
				if(IsPlayerReached()) return State.Engaging;
				return State.Alerted;
				break;

			case State.Engaging:
				if(IsPlayerReached()) return State.Attacking;
				return State.Alerted;
				break;

			case State.Attacking:
				if(IsAttackFinished()) return State.Engaging;
				if(IsPlayerReached()) return State.Attacking;
				return State.Engaging;
				break;

			case State.Returning:
				if(IsReturnedHome()) return State.Idle;
				return State.Returning;
				break;

			default:
				return state;
		}
		
	}

	protected virtual void TakeAction()
	{
		switch(state)
		{
			case State.Idle:
				ResetRotation();
				break;
			case State.Suspicious:
				LookAtLerp(lastKnownPlayerPos);
				break;
			case State.Alerted:
				ChasePlayer();
				break;
			case State.Engaging:
				InitiateAttack();
				break;
			case State.Attacking:
				TickAttack();
				break;
			case State.Returning:
				ReturnToDefault();
				break;
		}
	}

	protected virtual void OnStateChange(State oldState, State newState)
	{
		print("State change from: " + oldState + " to " + newState);
		if(oldState == State.Returning)
		{
			if(newState == State.Idle){
				transform.position = defaultPosition;
				rigidbody.velocity = Vector3.zero;
			}
		}
		else if(oldState == State.Suspicious)
		{
			suspiciousTimer = null;
		}
		
		if(newState == State.Suspicious)
		{
			suspiciousTimer = new Timer(5000);
		}
		else if(newState == State.Idle)
		{
			lastKnownPlayerPos = Vector3.zero;
		}


	}

//============================ STATE CHECKS ==================================//

	protected virtual bool IsPlayerReached()
	{
		float distance = (player.transform.position - transform.position).magnitude;
		if(distance < nearThresh)
		{
			return true;
		}
		return false;
	}

	protected virtual bool IsSuspiciousTimerDone()
	{
		if(suspiciousTimer != null)
		{
			suspiciousTimer.TickSeconds(Time.deltaTime);
			if(suspiciousTimer.IsDone())
			{
				return true;
			}
		}
		return false;
	}

	protected virtual bool IsReturnedHome()
	{
		if((defaultPosition - transform.position).magnitude <  moveSpeed + 0.01)
		{
			return true;
		}
		return false;
	}

	protected virtual bool IsTooFarAwayFromHome()
	{
		if((transform.position - defaultPosition).magnitude > distanceFromHomeThresh)
		{
			return true;
		}
		return false;
	}

	protected virtual bool IsPlayerTooFarAway()
	{
		if((player.transform.position - transform.position).magnitude > playerDistanceThresh)
		{
			return true;
		}
		return false;
	}

	protected virtual bool IsPlayerVisible()
	{
		Vector3 direction = player.transform.position - transform.position;
		float angle = Vector3.Angle(direction, transform.forward);

		if(angle < fieldOfView * 0.5f)
		{
			RaycastHit hit;
			Debug.DrawLine(transform.position, player.transform.position);
			if(Physics.Raycast(transform.position + Vector3.up, direction, out hit, seeingThresh))
			{
				GameObject go = hit.collider.gameObject;
				if(go != null && go.tag == Tags.player)
				{
					lastKnownPlayerPos = player.transform.position;
					return true;
				}
			}
		}
		return false;
	}

	protected virtual bool IsPlayerAudible()
	{
		NoiseManager nm = GameObject.FindWithTag(Tags.gameController).GetComponent<NoiseManager>();
		if(nm != null)
		{
			IEnumerator<Noise> e = nm.GetEnumerator();
			while(e.MoveNext())
			{
				Noise noise = e.Current;
				if(noise.origin.tag == Tags.player)
				{
					if((noise.position - transform.position).magnitude < noise.intensity * hearing)
					{
						lastKnownPlayerPos = noise.position;
						return true;
					}
				}
			}
		}
		return false;
	}

	protected virtual bool IsAttackFinished()
	{
		if(attackTimer == null)
			return true;

		return attackTimer.IsDone();
	}

//============================== ACTIONS =====================================//
	


	protected void InitiateAttack()
	{

		long attackTime = 1000;
		Vector3 startPosition = transform.position;
		Vector3 attackPosition = transform.position + transform.forward;
		attackTimer = new Timer(attackTime);
		attackTimer.onTick = (timer, interval) => {
			float progress = timer.GetProgress();
			// print(progress);
			if(progress < 0.5f)
			{
				transform.position = Vector3.Lerp(transform.position, attackPosition, progress);
			}
			else
			{
				transform.position = Vector3.Lerp(transform.position, startPosition, progress);
			}
		};
	}

	protected void TickAttack()
	{
		if(attackTimer != null)
		{
			LookAtLerp(player.transform.position);
			attackTimer.TickSeconds(Time.deltaTime);
		}
	}


	protected virtual void ChasePlayer()
	{
		LookAtLerp(player.transform.position);

		rigidbody.velocity = (transform.forward * moveSpeed);
	}

	protected virtual void ReturnToDefault()
	{
		LookAtLerp(defaultPosition);
		rigidbody.velocity = (transform.forward * moveSpeed);
	}

//============================== CALLBACKS ===================================//

	protected virtual void OnDeath(Mortal mortal)
	{
		gameObject.SetActive(false);
	}

//============================== MISC ========================================//
	
	protected virtual void RotateTowards(Quaternion rotation, float margin = 0.99f)
	{
		if(Quaternion.Dot(transform.rotation, rotation) < margin)
		{
			transform.rotation = Quaternion.Lerp(transform.rotation, rotation, turnSpeed * Time.deltaTime);
		}
		else if(transform.rotation == rotation)
		{
			return;
		}
		else
		{
			transform.rotation = rotation;
		}
	}

	protected virtual void LookAtLerp(Vector3 lookAt)
	{
		Vector3 direction = (lookAt - transform.position);
		Quaternion targetRotation = Quaternion.LookRotation(direction.normalized);
		RotateTowards(targetRotation);
	}

	protected virtual void ResetRotation()
	{
		RotateTowards(defaultRotation);
	}

	protected virtual void OnCollisionEnter(Collision collision)
	{
		GameObject obj = collision.gameObject;
		if(obj != null)	
		{
			if(obj.tag == Tags.player)
			{
				print("Player collided");
				collisionFlags[obj.tag] = collision;
			}
		}
	}

	protected virtual void OnCollisionExit(Collision collision)
	{
		GameObject obj = collision.gameObject;
		if(obj != null)	
		{
			if(obj.tag == Tags.player)
			{
				collisionFlags.Remove(obj.tag);
			}
		}
	}

	protected virtual GameObject GetMesh()
	{
		return transform.Find("wolf").gameObject;
	}

	protected virtual Renderer GetMeshRenderer()
	{
		return GetMesh().renderer;
	}

	protected virtual GameObject GetRig()
	{
		return transform.Find("group1").gameObject;
	}

	GameObject GetAttackCollider()
	{
		return transform.Find("attacker").gameObject;
	}
	

}