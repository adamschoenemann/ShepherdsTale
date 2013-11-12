using UnityEngine;

public class WolfController : MonoBehaviour
{

	private Vector3 defaultPosition;
	private Quaternion defaultRotation;

	private enum State {Idle, Suspicious, Alerted, Attack, Returning};
	private State _state = State.Idle;
	private State state
	{
		get
		{
			return _state;
		}
		set
		{
			if(_state != value)
			{
				OnStateChange(_state, value);
				_state = value;
			}
		}
	}

	private GameObject player;
	private PlayerController playerController;
	private Vector3 lastKnownPlayerPos;

	public float hearingThresh = 12.0f;
	public float seeingThresh = 10.0f;
	public float fieldOfView = 100.0f;
	public float turnSpeed = 5.0f;

	private float moveSpeed = 100.0f;

	void Awake()
	{
		state = State.Idle;
		player = GameObject.FindWithTag(Tags.player);
		playerController = player.GetComponent<PlayerController>();

		defaultPosition = transform.position;
		defaultRotation = transform.rotation;
	}

	void UpdateState()
	{
		switch(state)
		{
			case State.Idle:
				ListenForPlayer();
				LookForPlayer();
				break;
			case State.Suspicious:
				ListenForPlayer();
				LookForPlayer();
				break;
			case State.Alerted:
				LookForPlayer();
				CheckIfTooFarAway();
				break;
			case State.Returning:
				CheckIfReturned();
				break;


		}
		
	}

	void TakeAction()
	{
		switch(state)
		{
			case State.Idle:
				ResetRotation();
				break;
			case State.Suspicious:
				transform.LookAt(lastKnownPlayerPos);
				break;
			case State.Alerted:
				ChasePlayer();
				break;
			case State.Returning:
				ReturnToDefault();
				break;
		}
	}

	void ResetRotation()
	{
		if(Quaternion.Dot(transform.rotation, defaultRotation) < 0.99)
		{
			transform.rotation = Quaternion.Lerp(transform.rotation, defaultRotation, turnSpeed * Time.deltaTime);
		}
		else if(transform.rotation == defaultRotation)
		{
			return;
		}
		else 
		{
			transform.rotation = defaultRotation;
		}
	}

	void CheckIfReturned()
	{
		if((defaultPosition - transform.position).magnitude < Time.deltaTime * moveSpeed + 0.01)
		{
			state = State.Idle;
		}
	}

	void ReturnToDefault()
	{
		Vector3 direction = (defaultPosition - transform.position);
		transform.LookAt(defaultPosition); // = direction.normalized;
		rigidbody.velocity = (transform.forward * Time.deltaTime * moveSpeed);
	}

	void CheckIfTooFarAway()
	{
		if((transform.position - defaultPosition).magnitude > 15.0f)
		{
			state = State.Returning;
		}
	}

	void ChasePlayer()
	{
		Vector3 playerPos = player.transform.position;
		Vector3 direction = playerPos - transform.position;
		Vector3 newForward = direction.normalized;
		newForward = Vector3.Lerp(transform.forward, newForward, Time.deltaTime * turnSpeed);
		transform.forward = newForward;
		rigidbody.velocity = (transform.forward * Time.deltaTime * moveSpeed);
	}

	void OnStateChange(State oldState, State newState)
	{
		print("State change from: " + oldState + " to " + newState);
		if(oldState == State.Returning && newState == State.Idle)
		{
			transform.position = defaultPosition;
			transform.rotation = defaultRotation;
			rigidbody.velocity = Vector3.zero;
		}
		else if(newState == State.Idle)
		{
			lastKnownPlayerPos = Vector3.zero;
		}
	}

	void OnIdle()
	{

	}

	void LookForPlayer()
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
					state = State.Alerted;
				}
			}
		}
	}

	void ListenForPlayer()
	{
		Vector3 playerPos = player.transform.position;
		float distance = (playerPos - transform.position).magnitude;
		float hearingThresh = this.hearingThresh;
		if(playerController.IsSneaking())
		{
			hearingThresh *= 0.5f;
		}
		if(distance < hearingThresh)
		{
			lastKnownPlayerPos = player.transform.position;
			state = State.Suspicious;
		}
		else
		{
			state = State.Idle;
		}
	}

	void Update()
	{
		UpdateState();
		TakeAction();
	}

	void FixedUpdate()
	{

	}

	void OnSuspicious()
	{
		// lastKnownPlayerPos = player.transform.position;
	}

	void OnPlayerDetected()
	{

	}

	void OnPlayerReached()
	{

	}

	void OnPlayerLost()
	{

	}

	void OnHit()
	{

	}

}