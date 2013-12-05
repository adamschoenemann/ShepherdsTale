using UnityEngine;

public class SK_KillScript : MonoBehaviour
{
	public float aimTime = 4.0f; // Seconds
	public float stunTime = 2.5f; // Seconds
	public float runSpeedMax = 20.0f; // UnityUnits/sec
	public float runDistanceOvershootFactor = 0.2f; // How far beyond the target the SK should stop, as a fraction of the initial distance between SK and target.
	public float turnSpeed = 3.0f;
	public float rushDistance = 2.0f;
	public float rushDelay = 2.0f; // Seconds into aim time before rushing is allowed
	public AnimationCurve runSpeedCurve;
	

	private Vector3 runDirection;
	private float timeSpentInState = 0.0f; // Seconds
	private float speedFractionToStun = 0.8f;

	private GameObject player;
	private PlayerAnimation playerAnim;
	private Animator anim;
	
	public enum States{aim, run, stun}; 
	public States state;
				
	private Vector3 startRunPos;
	private float runDistanceTargetSquared;

	private Mortal mortal;
	private bool hitHardObstacle = false;
	private bool hitSoftObstacle = false;

	private Timer timer;

	/*
		TODO 
		Make throw-player-away thingy nicer.
		Make encounters with the player do damage to the player.
	*/

	void Awake()
	{
		this.rigidbody.freezeRotation = true; // Avoid physics-based rotations.
		player = GameObject.FindGameObjectWithTag(Tags.player);
		playerAnim = player.GetComponent<PlayerAnimation>();
		anim = GetComponent<Animator>();
		mortal = GetComponent<Mortal>();
		mortal.onDamageHandler = (mortalInstance, attacker, health) => {
			if(state == States.stun)
				return true;
			else
				return false;
		};
		mortal.onDeathHandler = (mortalInstance, killer) => {
			Destroy(this.gameObject);

			// Insert winning consequence here, e.g. go to scene or something like that.
			print("You won against the sheep king! Now celebrate with a happy ending!");
		};

		timer = new Timer(aimTime);
	}

	void Update()
	{
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
		timer.TickSeconds(Time.deltaTime);
	}

	private void Aim(){
		LookAtLerp(player.transform.position);

		if(timer.IsDone())
		{
			StartRunning();
		} 
		else if(timer.GetElapsedSeconds() > rushDelay && (player.transform.position - transform.position).sqrMagnitude < (rushDistance * rushDistance))
		{
			StartRushing();
		}
	}
	
	// Handles running speed, timing, and reacts to collisions.
	private void Run()
	{	
		float distanceCoveredSquared = (transform.position - startRunPos).sqrMagnitude;

		if(hitHardObstacle)
		{
			hitHardObstacle = false;
			hitSoftObstacle = false;

			// Check if velocity was high enough to require stunning
			if(runSpeedCurve.Evaluate(distanceCoveredSquared / runDistanceTargetSquared) > speedFractionToStun)
			{
				StartStun();
			} 
			else 
			{
				StartAiming();
			}
			
			timeSpentInState = 0.0f;
		}
		else if(hitSoftObstacle)
		{
			hitHardObstacle = false;
			hitSoftObstacle = false;

			StartAiming();
		}
		else if(distanceCoveredSquared > runDistanceTargetSquared)
		{
			StartAiming();
		}
		else 
		{
			rigidbody.velocity = runSpeedCurve.Evaluate(distanceCoveredSquared / runDistanceTargetSquared) * runSpeedMax * runDirection;
		}
	}

	private void Stun()
	{
		if(timer.IsDone())//timeSpentInState > stunTime)
		{
			StartAiming();
		}
	}

	private void StartAiming()
	{
		rigidbody.velocity = Vector3.zero;
		timer = new Timer(aimTime);
		state = States.aim;	
	}

	private void StartStun()
	{
		rigidbody.velocity = Vector3.zero;
		timer = new Timer(stunTime);
		state = States.stun;		
	}

	// Used to initiate and activate running towards the player
	private void StartRunning()
	{
		state = States.run;
		startRunPos = transform.position;
		runDirection = transform.forward;
		runDistanceTargetSquared = ((player.transform.position - startRunPos) * (1.0f + runDistanceOvershootFactor)).sqrMagnitude;
		timeSpentInState = 0.0f;
	}

	// Used to rush the SK towards the player when the player comes too close during aiming state
	private void StartRushing()
	{
		Vector3 target = player.transform.position;
		runDirection = transform.forward;
		startRunPos = transform.position - 2*(target - transform.position);

		state = States.run;		
		runDistanceTargetSquared = ((player.transform.position - startRunPos) * (1.0f + runDistanceOvershootFactor)).sqrMagnitude;
		timeSpentInState = 0.0f;

		float distanceCoveredSquared = (transform.position - startRunPos).sqrMagnitude;
	}

	void OnCollisionEnter(Collision collision)
	{
		GameObject other = collision.gameObject;
		if(other.tag == Tags.player)
		{
			switch(state)
			{
				case States.run:
					// Violently throw the player out of the way,
					// Damage player
					Mortal playerLife = other.GetComponent<Mortal>();
					playerLife.Damage(1, gameObject);
					Vector3 flyDir = (other.transform.position - transform.position).normalized; // TODO make this MUCH nicer.
					other.rigidbody.velocity = ((2*Vector3.up + flyDir).normalized * 100);//500*flyDir); 
					break;
				case States.aim:
					// Start running, and throw player away
					StartRushing();
					break;
				case States.stun:
					// Take the pain
					break;
			}
		} 
		else if(other.tag == "HardObstacle" && state == States.run)
		{
			hitHardObstacle = true;
		}
		else if(other.tag == "SoftObstacle" && state == States.run)
		{
			hitSoftObstacle = true;
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
}



