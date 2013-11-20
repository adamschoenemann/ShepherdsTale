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
	public enum State {Idle, Patrolling, Suspicious, Alerted, Chasing, Engaging, Attacking, Returning};
}

[RequireComponent(typeof(WolfAnimation))]
[RequireComponent(typeof(Patroller))]
[RequireComponent(typeof(Mortal))]
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

	protected Timer alertedTimer;

	protected Mortal mortal;

	private Timer attackTimer;
	private GameObject attacker;

	private WolfAnimation animation;
	private Patroller patroller;

//============================================================================//
//============================== METHODS =====================================//
//============================================================================//

//================================ CORE ======================================//
	protected virtual void Awake()
	{
		player = GameObject.FindWithTag(Tags.player);
		playerController = player.GetComponent<PlayerController>();
		mortal = GetComponent<Mortal>();

		mortal.onDeathHandler = OnDeath;

		defaultPosition = transform.position;
		defaultRotation = transform.rotation;

		animation = GetComponent<WolfAnimation>();
		patroller = GetComponent<Patroller>();
		state = State.Patrolling;

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
				if(IsPlayerVisible()) return State.Chasing;
				if(patroller.IsWaiting() == false) return State.Patrolling;
				return State.Idle;
				break;

			case State.Patrolling:
				if(IsPlayerAudible()) return State.Suspicious;
				if(IsPlayerVisible()) return State.Chasing;
				if(patroller.IsWaiting()) return State.Idle;
				return State.Patrolling;
				break;

			case State.Suspicious:
				if(IsPlayerVisible()) return State.Chasing;
				if(IsPlayerAudible()) return State.Suspicious;
				if(IsSuspiciousTimerDone()) return State.Returning;
				return State.Suspicious;
				break;

			case State.Alerted:
				if(IsPlayerVisible()) return State.Chasing;
				if(IsPlayerAudible()) return State.Chasing;
				if(IsAlertedTimerDone()) return State.Suspicious;
				if(IsLastKnownPosReached()) return State.Suspicious;
				return State.Alerted;
				break;

			case State.Chasing:
				if(IsPlayerVisible() == false) return State.Alerted;
				if(IsTooFarAwayFromHome()) return State.Returning;
				if(IsPlayerTooFarAway()) return State.Returning;
				if(IsPlayerReached()) return State.Engaging;
				return State.Chasing;
				break;

			case State.Engaging:
				if(IsPlayerReached()) return State.Attacking;
				return State.Chasing;
				break;

			case State.Attacking:
				if(IsAttackFinished()) return State.Engaging;
				if(IsPlayerReached()) return State.Attacking;
				return State.Engaging;
				break;

			case State.Returning:
				if(patroller.IsReturnedHome(Time.deltaTime * moveSpeed)) return State.Patrolling;
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
				// ResetRotation();
				patroller.WaitAtWaypoint();
				break;

			case State.Patrolling:
				patroller.GoToWaypoint();
				patroller.GetNextWaypoint();
				break;

			case State.Suspicious:
				LookAtLerp(lastKnownPlayerPos);
				break;

			case State.Alerted:
				ChasePlayer();
				break;

			case State.Chasing:
				ChasePlayer();
				break;

			case State.Engaging:
				InitiateAttack();
				break;

			case State.Attacking:
				TickAttack();
				break;

			case State.Returning:
				// ReturnToDefault();
				patroller.ReturnToLastPosition(moveSpeed);
				break;
		}
	}

	protected virtual void OnStateChange(State oldState, State newState)
	{
		print("State change from: " + oldState + " to " + newState);
		if(oldState == State.Returning)
		{
			if(newState == State.Patrolling){
				// transform.position = defaultPosition;
				transform.position = patroller.lastPosition;
				rigidbody.velocity = Vector3.zero;
			}
		}
		else if(oldState == State.Suspicious)
		{
			suspiciousTimer = null;
		}
		else if(oldState == State.Alerted)
		{
			alertedTimer = null;
		}
		else if(oldState == State.Idle || oldState == State.Patrolling)
		{
			patroller.StopPatrolling();
		}
		
		if(newState == State.Suspicious)
		{
			suspiciousTimer = new Timer(5000);
		}
		else if(newState == State.Alerted)
		{
			alertedTimer = new Timer(5000);
		}
		else if(newState == State.Idle)
		{
			lastKnownPlayerPos = Vector3.zero;
		}

		animation.OnStateChange(oldState, newState);


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

	protected virtual bool IsLastKnownPosReached()
	{
		float distance = (lastKnownPlayerPos - transform.position).magnitude;
		if(distance < nearThresh)
		{
			return true;
		}
		return false;
	}

	protected virtual bool IsAlertedTimerDone()
	{
		if(alertedTimer != null)
		{
			alertedTimer.TickSeconds(Time.deltaTime);
			if(alertedTimer.IsDone())
			{
				return true;
			}
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
		// if((patroller.lastPosition - transform.position).magnitude <  Time.deltaTime * moveSpeed + 0.01)
		{
			return true;
		}
		return false;
	}

	protected virtual bool IsTooFarAwayFromHome()
	{
		// if((transform.position - defaultPosition).magnitude > distanceFromHomeThresh)
		if((transform.position - patroller.lastPosition).magnitude > distanceFromHomeThresh)
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
	
	protected void MoveTowards(Vector3 target, float extraSpeed = 1.0f)
	{
		LookAtLerp(target);
		rigidbody.velocity = transform.forward * moveSpeed * extraSpeed;
	}

	protected void InitiateAttack()
	{

		long attackTime = 1000;
		Vector3 startPosition = transform.position;
		Vector3 attackPosition = transform.position + transform.forward;
		attackTimer = new Timer(attackTime);
		attackTimer.onTick = (timer, interval) => {
			float progress = timer.GetProgress();
			// print(progress);
			if(progress < 0.2f)
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

	// TODO: Find a way to avoid the FUCKING TREES!!!
	protected virtual void ChasePlayer()
	{
		RaycastHit hit;
		Vector3 origin = transform.position + Vector3.up;
		Vector3 playerPos = player.transform.position;
		playerPos.y = origin.y;
		Vector3 direction = (playerPos - transform.position).normalized;
		float thresh = 10.0f;
		// Path to player blocked?
		if(Physics.Raycast(origin, direction, out hit, thresh))
		{
			if(hit.collider.gameObject.tag != Tags.player)
			{
				// Find a way around object, plz
				Vector3 newDirection = 
					Utils.FindClearPathDirection(
						origin, 
						playerPos, 
						new string[]{Tags.player}
					);
				newDirection.y = transform.position.y;
				MoveTowards(transform.position + newDirection, 1.5f);
				return;
			}
		}
		MoveTowards(lastKnownPlayerPos);
	}

	/**
	 * Obsolete in favor of Patroller
	 */
	protected virtual void ReturnToDefault()
	{
		RaycastHit hit;
		Vector3 origin = transform.position + Vector3.up;
		Vector3 playerPos = player.transform.position + Vector3.up;
		Vector3 between = (origin - playerPos);
		Vector3 direction = between.normalized;

		if(Physics.Raycast(origin, direction, out hit, between.magnitude))
		{
			Vector3 newDirection =
				Utils.FindClearPathDirection(origin, playerPos);
			newDirection.y = transform.position.y;
			LookAtLerp(newDirection);
			rigidbody.velocity = transform.forward * moveSpeed;
		}
		else
		{
			MoveTowards(defaultPosition);
		}
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