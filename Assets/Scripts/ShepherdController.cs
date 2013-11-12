using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

// Require these components when using this script
[RequireComponent(typeof (Animator))]
[RequireComponent(typeof (CapsuleCollider))]
[RequireComponent(typeof (Rigidbody))]
public class ShepherdController : MonoBehaviour
{

	private Dictionary<string, bool> collisionFlags = new Dictionary<string, bool>();

	public float turnSmoothing = 3f;
	public float normalSpeed = 400.0f;
	public float sneakSpeed = 150.0f;
	private float speed;
	

	[System.NonSerialized]					
	public float lookWeight;					// the amount to transition when using head look
	
	[System.NonSerialized]
	public Transform enemy;						// a transform to Lerp the camera to during head look
	
	public float animSpeed = 1.5f;				// a public setting for overall animator animation speed
	public float lookSmoother = 3f;				// a smoothing setting for camera motion
	public bool useCurves;						// a setting for teaching purposes to show use of curves

	
	private Animator anim;							// a reference to the animator on the character
	//private AnimatorStateInfo currentBaseState;			// a reference to the current state of the animator, used for base layer
	public AnimatorStateInfo currentBaseState;			// a reference to the current state of the anima
	public AnimatorStateInfo layer2State;
	private AnimatorStateInfo layer2CurrentState;	// a reference to the current state of the animator, used for layer 2
	private CapsuleCollider col;					// a reference to the capsule collider of the character
	

	static int idleState = Animator.StringToHash("Base Layer.Idle");	
	static int locoState = Animator.StringToHash("Base Layer.Locomotion");			// these integers are references to our animator's states
	static int jumpState = Animator.StringToHash("Base Layer.Jump");				// and are used to check state for various actions to occur
	static int jumpDownState = Animator.StringToHash("Base Layer.JumpDown");		// within our FixedUpdate() function below
	static int fallState = Animator.StringToHash("Base Layer.Fall");
	static int rollState = Animator.StringToHash("Base Layer.Roll");
	
	// Mathias virus!
	//static int bowState = Animator.StringToHash("Base Layer.Bow");
	//static int kickState = Animator.StringToHash("Base Layer.Bow");
	//static int jump2State = Animator.StringToHash("Base Layer.Jumpy");
	static int inAirState = Animator.StringToHash("Base Layer.InAir");
	static int sneakState = Animator.StringToHash("Base Layer.SneakRight");
	
	public int preAttackState = Animator.StringToHash("Base Layer.Pre-Attack");
	public int attackState = Animator.StringToHash("Base Layer.Attack");
	
	public int preAttackRunState = Animator.StringToHash("Layer2.Pre-Attack");
	public int attackRunState = Animator.StringToHash("Layer2.Attack");
	int counter;
	
	private GameObject cam;
	
	private GameObject[] wolves;
	
	public short wolfKillCount { private get; set; }

	void Awake()
	{
		cam = GameObject.FindGameObjectWithTag(Tags.mainCamera);	
		speed = normalSpeed;
	}

	void Start ()
	{
		// initialising reference variables
		anim = GetComponent<Animator>();					  
		col = GetComponent<CapsuleCollider>();				
		//enemy = GameObject.Find("Enemy").transform;	
		if(anim.layerCount ==2)
			anim.SetLayerWeight(1, 1);
		wolfKillCount = 0;
	}
	
	void Rotate(Vector3 targetDirection) {
		if(rigidbody.velocity.magnitude <= 0)
		{
			// return;
		}
		// Create a new vector of the horizontal and vertical inputs.
    // Vector3 targetDirection = rigidbody.transform.forward;
    
    // Create a rotation based on this new vector assuming that up is the global y axis.
    Quaternion targetRotation = Quaternion.LookRotation(targetDirection, Vector3.up);
    
    // Create a rotation that is an increment closer to the target rotation from the player's rotation.
    Quaternion newRotation = Quaternion.Lerp(rigidbody.rotation, targetRotation, turnSmoothing * Time.deltaTime);
    
    // Change the players rotation to this new rotation.
    rigidbody.MoveRotation(newRotation);
	}


	private Vector3 Move(float h, float v)
	{
		Vector3 camForward = cam.transform.forward;
		Vector3 camRight = cam.transform.right;
		Vector3 forward = v * Utils.ProjectToPlane(camForward, Vector3.up);
		Vector3 sideways = h * Utils.ProjectToPlane(camRight, Vector3.up);
		Vector3 direction = (sideways + forward);
		Vector3 force = direction.normalized * speed * Time.deltaTime * 50;
		force += new Vector3(0, -0.75f, 0); // Anti-bump factor
		rigidbody.AddForce(force);
		// rigidbody.velocity = direction.normalized * speed * Time.deltaTime;
		return direction;
	}

	GameObject GetClosestEnemy(float threshold)
	{
		GameObject[] enemies = GameObject.FindGameObjectsWithTag("Enemy");
		if(enemies.Length == 0)
			return null;

		GameObject closest = enemies[0];
		float minDistance = (enemies[0].transform.position - transform.position).magnitude;
		for(int i = 1; i < enemies.Length; i++)
		{
			float distance = (enemies[i].transform.position - transform.position).magnitude;
			if(distance < minDistance)
			{
				minDistance = distance;
				closest = enemies[0];
			}
		}

		if(minDistance > threshold)
			return null;

		return closest;

	}

	private bool IsGrounded()
	{
		if(collisionFlags.ContainsKey("Grounded"))
		{
			bool grounded = collisionFlags["Grounded"];
			if(grounded == true)
				return grounded;
			// grounded is false - check how far way we are
			RaycastHit hit;
			float minDistanceFromGround = 0.5f;
			if(Physics.Raycast(transform.position, Vector3.down, out hit, minDistanceFromGround))
			{
				return true;
			}
			return collisionFlags["Grounded"];
		}
		return true;
	}

	void OnCollisionEnter(Collision collision){
		switch(collision.gameObject.tag)
		{
			case "Ground":
				collisionFlags["Grounded"] = true;
				break;

			default:
				break;
		}
	}

	void OnCollisionExit(Collision collision){
		switch(collision.gameObject.tag)
		{
			case "Ground":
				collisionFlags["Grounded"] = false;
				break;

			default:
				break;
		}
	}
	
	void Update ()
	{
		// Minimize aggro range if we hold down SHIFT (same as sneaky key) Still need some tweaking, 
		//you can "escape" the wolf from a closer distance by hitting the shift key!
		if(Input.GetButtonDown("Sneak"))
		{
			anim.SetBool("Sneak", true);
			SetSneaking(true);
		}
		if(Input.GetButtonUp("Sneak"))
		{
			anim.SetBool("Sneak", false);
			SetSneaking(false);
		}
		
		if(Input.GetButtonDown("Fire3")){
			audio.Play();
		}
		
	}


	void FixedUpdate ()
	{
		Debug.DrawLine(transform.position, transform.position + transform.forward);
		if(IsGrounded() == false)
			return;

		float h = Input.GetAxis("Horizontal");				// setup h variable as our horizontal input axis
		float v = Input.GetAxis("Vertical");				// setup v variables as our vertical input axis

		if(h != 0 || v != 0)
		{
			Vector3 direction = Move(h, v);
			Rotate(direction.normalized);
			anim.SetFloat("Speed", direction.magnitude);
			anim.SetFloat("Direction", v*h);
		}
		else {
			Rotate(cam.transform.forward);
		}

		anim.speed = animSpeed;								// set the speed of our animator to the public variable 'animSpeed'
		anim.SetLookAtWeight(lookWeight);					// set the Look At Weight - amount to use look at IK vs using the head's animation
		currentBaseState = anim.GetCurrentAnimatorStateInfo(0);	// set our currentState variable to the current state of the Base Layer (0) of animation
		layer2State = anim.GetCurrentAnimatorStateInfo(1);	
		
		if(anim.layerCount == 2)		
			layer2CurrentState = anim.GetCurrentAnimatorStateInfo(1);	// set our layer2CurrentState variable to the current state of the second Layer (1) of animation
		
		
		// LOOK AT ENEMY
		
		// if we hold Alt..
		if(Input.GetButton("Fire2"))
		{
			GameObject enemy = GetClosestEnemy(10.0f);
			if(enemy == null)
				return;
			transform.forward = (enemy.transform.position - transform.position).normalized;
			// ...set a position to look at with the head, and use Lerp to smooth the look weight from animation to IK (see line 54)
			//anim.SetLookAtPosition(enemy.position);
			// lookWeight = Mathf.Lerp(lookWeight,1f,Time.deltaTime*lookSmoother);
		}
		
		// else, return to using animation for the head by lerping back to 0 for look at weight
		else
		{
			lookWeight = Mathf.Lerp(lookWeight,0f,Time.deltaTime*lookSmoother);
		}
		
		if (currentBaseState.nameHash == idleState)
		{
			if(Input.GetButtonDown("Fire1"))
			{
				anim.SetBool("Attack", true);
			}
		}
		// if we are in the attacking state... 
		else if(currentBaseState.nameHash == attackState)
		{
			//  ..and not still in transition..
			if(!anim.IsInTransition(0))
			{
				/*
				if(useCurves)
					// ..set the collider height to a float curve in the clip called ColliderHeight
					col.height = anim.GetFloat("ColliderHeight");
					*/
				
				// reset the Jump bool so we can jump again, and so that the state does not loop 
				anim.SetBool("Attack", false);
			}
		}
		
		
		// STANDARD JUMPING
		
		// if we are currently in a state called Locomotion (see line 25), then allow Jump input (Space) to set the Jump bool parameter in the Animator to true
		if (currentBaseState.nameHash == locoState)
		{
			if(Input.GetButtonDown("Jump"))
			{
				// MATHIAS
				//animation.Play("JumpHandicap");
				//rigidbody.AddForce(Vector3.up * 30);
				counter = 0;
				anim.SetBool("Jump", true);
			}
		}
		
		// if we are in the jumping state... 
		else if(currentBaseState.nameHash == inAirState)
		{
			counter++;
			if(counter == 1){
				//Debug.Log("Hej");
				//rigidbody.AddForce(Vector3.up * 20);
			}
			//  ..and not still in transition..
			if(!anim.IsInTransition(0))
			{
				if(useCurves)
					// ..set the collider height to a float curve in the clip called ColliderHeight
					col.height = anim.GetFloat("ColliderHeight");
				
				// reset the Jump bool so we can jump again, and so that the state does not loop 
				anim.SetBool("Jump", false);
			}
			
			// Raycast down from the center of the character.. 
			Ray ray = new Ray(transform.position + Vector3.up, -Vector3.up);
			RaycastHit hitInfo = new RaycastHit();
			
			if (Physics.Raycast(ray, out hitInfo))
			{
				// ..if distance to the ground is more than 1.75, use Match Target
				if (hitInfo.distance > 1.75f)
				{
					
					// MatchTarget allows us to take over animation and smoothly transition our character towards a location - the hit point from the ray.
					// Here we're telling the Root of the character to only be influenced on the Y axis (MatchTargetWeightMask) and only occur between 0.35 and 0.5
					// of the timeline of our animation clip
					anim.MatchTarget(hitInfo.point, Quaternion.identity, AvatarTarget.Root, new MatchTargetWeightMask(new Vector3(0, 1, 0), 0), 0.35f, 0.5f);
				}
			}
		}
		

		
		// JUMP DOWN AND ROLL 
		
		// if we are jumping down, set our Collider's Y position to the float curve from the animation clip - 
		// this is a slight lowering so that the collider hits the floor as the character extends his legs
		else if (currentBaseState.nameHash == jumpDownState)
		{
			col.center = new Vector3(0, anim.GetFloat("ColliderY"), 0);
		}
		
		// if we are falling, set our Grounded boolean to true when our character's root 
		// position is less that 0.6, this allows us to transition from fall into roll and run
		// we then set the Collider's Height equal to the float curve from the animation clip
		else if (currentBaseState.nameHash == fallState)
		{
			col.height = anim.GetFloat("ColliderHeight");
		}
		
		// if we are in the roll state and not in transition, set Collider Height to the float curve from the animation clip 
		// this ensures we are in a short spherical capsule height during the roll, so we can smash through the lower
		// boxes, and then extends the collider as we come out of the roll
		// we also moderate the Y position of the collider using another of these curves on line 128
		else if (currentBaseState.nameHash == rollState)
		{
			if(!anim.IsInTransition(0))
			{
				if(useCurves)
					col.height = anim.GetFloat("ColliderHeight");
				
				col.center = new Vector3(0, anim.GetFloat("ColliderY"), 0);
				
			}
		}
		// IDLE
		
		// check if we are at idle, if so, let us Wave!
		if (currentBaseState.nameHash == locoState)
		{
			if(Input.GetButtonDown("Fire1"))
			{
				anim.SetBool("Wave", true);
			}
		}
		// if we enter the waving state, reset the bool to let us wave again in future
		if(layer2CurrentState.nameHash == attackRunState)
		{
			anim.SetBool("Wave", false);
		}
	}

	public bool IsAttacking()
	{
		return (currentBaseState.nameHash == attackState);
	}
	
	public void SetSneaking(bool IsSneaking)
	{
		wolves = GameObject.FindGameObjectsWithTag(Tags.enemy);

		if(IsSneaking == true)
		{
			speed = sneakSpeed;	
			foreach(GameObject e in wolves)
			{
				Enemy wolf = e.GetComponent<Enemy>();
				wolf.col.radius = 4.0f;
			}
		}
		else
		{
			speed = normalSpeed;
			foreach(GameObject e in wolves)
			{
				Enemy wolf = e.GetComponent<Enemy>();
				wolf.col.radius = 8.0f;
			}
		}
	}
}
