using UnityEngine;

public class SK_KillScript : MonoBehaviour
{
	public float aimTime = 4.0f; // Seconds
	public float stunTime = 5.0f; // Seconds
	public float runSpeedMax = 8.5f; // Unit ?

	public float runDistanceOvershoot = 2.5f; // Unity 3D distance units
	public AnimationCurve runSpeedCurve;
	public float turnSpeed = 3.0f;

	private Vector3 runDirection;
	private float timeSpentInState = 0.0f; // Seconds

	private GameObject player;
	private PlayerAnimation playerAnim;
	private Animator anim;
	
	public enum States{aim, run, stun}; 
	private States state;
				
	private Vector3 startRunPos;
	private float runDistanceTargetSquared;

	private Mortal mortal;

	void Awake()
	{
		this.rigidbody.freezeRotation = true; // Avoid physics-based rotations.
		Debug.Log("state: " + state);
		player = GameObject.FindGameObjectWithTag(Tags.player);
		playerAnim = player.GetComponent<PlayerAnimation>();
		anim = GetComponent<Animator>();
		mortal = GetComponent<Mortal>();
		mortal.onDamageHandler = (mortalInstance, health) => {
			if(state == States.stun)
				return true;
			else
				return false;
		};
	}

	void Update()
	{
		//Debug.Log("SK state: " + state);
		switch(state)
		{
			case States.aim:
				Aim();
				break;
			case States.run:
				Run();
				break;
			case States.stun:
				Stun();
				break;
			default:
				Debug.Log("Sheep King (kill scene) state value undefined: " + state);
				break;
		}

		timeSpentInState += Time.deltaTime;
	}
	
	private bool IsPlayer(GameObject obj)
	{
		return (obj.tag == Tags.player);
	}

	private void Aim(){
		Vector3 target = player.transform.position;
		LookAtLerp(target);

		if(timeSpentInState > aimTime)
		{
			state = States.run;
			startRunPos = transform.position;
			runDirection = transform.forward;
			runDistanceTargetSquared = (target - startRunPos).sqrMagnitude + runDistanceOvershoot * runDistanceOvershoot;
			timeSpentInState = 0.0f;
		}
	}
	
	private void Run()
	{	
		float distanceCoveredSquared = (transform.position - startRunPos).sqrMagnitude;

		if(distanceCoveredSquared > runDistanceTargetSquared)
		{
			rigidbody.velocity = Vector3.zero;
			//state = States.aim;
			state = States.stun; // TODO correct back to aim - this is solely for testing purposes.

			timeSpentInState = 0.0f;
		}
		else 
		{
			rigidbody.velocity = runSpeedCurve.Evaluate(distanceCoveredSquared / runDistanceTargetSquared) * runSpeedMax * runDirection;
		}
	}

	private void Stun()
	{
		if(timeSpentInState > stunTime)
		{
			state = States.aim;
			timeSpentInState = 0.0f;
		}
	}

	void OnTriggerStay(Collider other)
	{	
	/*	
		if(IsPlayer(other.gameObject)){		// Collision with a gameObject with tag player
			Vector3 direction = player.transform.position - transform.position;
			float angle = Vector3.Angle(direction, transform.forward);
			//RaycastHit hit;
			//Debug.Log("Angle: " + angle + " fieldOfView: " + fieldOfView*0.5f + " CanAttackBool :" + canAttack);
			/*
			Debug.DrawLine(transform.position + (transform.up * 0.5f) + transform.forward, player.transform.position + (transform.up * 0.5f));
			if(Physics.Raycast(transform.position + (transform.up * 0.5f) + transform.forward, direction.normalized, out hit, col.radius) == false){
				canAttack = true;
			}
			/
			
			if(angle < fieldOfView * 0.5f){	// 110/2 == 55 on both sides of the wolf (therefore 110 field of view.
				if(canAttack == false){
					Debug.DrawLine(transform.position + (transform.up * 0.5f) + transform.forward, player.transform.position + (transform.up * 0.5f));
					state = States.run;
					youGotCaught = true;
				}
			}
			
		}
		*/
	}

	void OnTriggerExit(Collider other)
	{
		/*
		if(other.gameObject == GameObject.FindGameObjectWithTag("Player"))
		{
			//playerInSight = false;
			//playerIsNear = false;
//			healthBar.enabled = false;
			//state = States.idle;
		}*/
	}

	void OnTriggerEnter(Collider other)
	{
		
	}

	void OnCollisionEnter(Collision collision)
	{
		GameObject other = collision.gameObject;
		if(other.tag == "Player")
		{
			switch(state)
			{
				case States.run:
					// Violently throw the player out of the way,
					// Damage player
					Vector3 flyDir = (other.transform.position - transform.position).normalized;
					other.rigidbody.velocity = ((2*Vector3.up + flyDir).normalized * 100);//500*flyDir);
					break;
				case States.aim:
					// Start running, and throw player away
					break;
				case States.stun:
					// Take the pain
					break;
			}
		} 
		else if(other.tag == "Obstacle" && state == States.run)
		{
			//Record velocity squared
			float vel = rigidbody.velocity.sqrMagnitude;
			// Stop
			rigidbody.velocity = Vector3.zero;

			if(vel > (runSpeedMax * 0.5)*(runSpeedMax * 0.5))
			{
				state = States.stun;
			} 
			else 
			{
				state = States.aim;	
			}
			timeSpentInState = 0.0f;
		}
	}

	void OnCollisionExit(Collision collision)
	{
		if(collision.gameObject.tag == Tags.player)	
		{
			
		}		
	}

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

/*	void OnGUI()
	{
		
	}*/
}



