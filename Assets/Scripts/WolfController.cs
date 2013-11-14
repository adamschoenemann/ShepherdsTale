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
	public enum State {Idle, Suspicious, Alerted, Attacking, Returning};
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

//============================================================================//
//============================== METHODS =====================================//
//============================================================================//

//================================ CORE ======================================//
	protected void Awake()
	{
		state = State.Idle;
		player = GameObject.FindWithTag(Tags.player);
		playerController = player.GetComponent<PlayerController>();
		mortal = GetComponent<Mortal>();

		mortal.onDeathHandler = OnDeath;

		defaultPosition = transform.position;
		defaultRotation = transform.rotation;
	}

	protected void Update()
	{
		state = UpdateState();
		TakeAction();
	}

	protected State UpdateState()
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
				if(IsPlayerReached()) return State.Attacking;
				return State.Alerted;
				break;

			case State.Attacking:
				if(IsPlayerReached()) return State.Attacking;
				return State.Alerted;
				break;

			case State.Returning:
				if(IsReturnedHome()) return State.Idle;
				return State.Returning;
				break;

			default:
				return state;
		}
		
	}

	protected void TakeAction()
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
			case State.Attacking:
				AttackPlayer();
				break;
			case State.Returning:
				ReturnToDefault();
				break;
		}
	}

	protected void OnStateChange(State oldState, State newState)
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

	protected bool IsPlayerReached()
	{
		float distance = (player.transform.position - transform.position).magnitude;
		if(distance < nearThresh)
		{
			return true;
		}
		return false;
	}

	protected bool IsSuspiciousTimerDone()
	{
		if(suspiciousTimer != null)
		{
			suspiciousTimer.tickSeconds(Time.deltaTime);
			if(suspiciousTimer.IsDone())
			{
				return true;
			}
		}
		return false;
	}

	protected bool IsReturnedHome()
	{
		if((defaultPosition - transform.position).magnitude <  moveSpeed + 0.01)
		{
			return true;
		}
		return false;
	}

	protected bool IsTooFarAwayFromHome()
	{
		if((transform.position - defaultPosition).magnitude > distanceFromHomeThresh)
		{
			return true;
		}
		return false;
	}

	protected bool IsPlayerTooFarAway()
	{
		if((player.transform.position - transform.position).magnitude > playerDistanceThresh)
		{
			return true;
		}
		return false;
	}

	protected bool IsPlayerVisible()
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

	protected bool IsPlayerAudible()
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

//============================== ACTIONS =====================================//
	
	// TODO: Attacking properly
	// Animations should most likely be used
	protected void AttackPlayer()
	{
		rigidbody.velocity = Vector3.zero;
		LookAtLerp(player.transform.position);
		print("AttackPlayer");
		// StartCoroutine(DoAttack());
	}

	protected IEnumerator DoAttack()
	{
		// GameObject rig = GetRig();
		transform.position = transform.position + transform.forward * 0.2f;
		yield return new WaitForSeconds(1.0f);
		transform.position = transform.position - transform.forward * 0.2f;
	}

	protected void ChasePlayer()
	{
		LookAtLerp(player.transform.position);

		rigidbody.velocity = (transform.forward * moveSpeed);
	}

	protected void ReturnToDefault()
	{
		LookAtLerp(defaultPosition);
		rigidbody.velocity = (transform.forward * moveSpeed);
	}

//============================== CALLBACKS ===================================//

	protected void OnDeath(Mortal mortal)
	{
		gameObject.SetActive(false);
	}

//============================== MISC ========================================//
	
	protected void RotateTowards(Quaternion rotation, float margin = 0.99f)
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

	protected void LookAtLerp(Vector3 lookAt)
	{
		Vector3 direction = (lookAt - transform.position);
		Quaternion targetRotation = Quaternion.LookRotation(direction.normalized);
		RotateTowards(targetRotation);
	}

	protected void ResetRotation()
	{
		RotateTowards(defaultRotation);
	}

	protected void OnCollisionEnter(Collision collision)
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

	protected void OnCollisionExit(Collision collision)
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

	protected GameObject GetMesh()
	{
		return transform.Find("wolf").gameObject;
	}

	protected Renderer GetMeshRenderer()
	{
		return GetMesh().renderer;
	}

	protected GameObject GetRig()
	{
		return transform.Find("group1").gameObject;
	}
	

}