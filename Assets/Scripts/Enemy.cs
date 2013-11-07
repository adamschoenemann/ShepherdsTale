using UnityEngine;

public class Enemy : MonoBehaviour
{
	private GameObject player;
	private ShepherdController shepCtrl;
	public float moveSpeed = 120f;
	private bool colliding = false;
	//private bool playerInSight = false;
	public float fieldOfView = 110f;
	public SphereCollider col;
	private Animator anim;
	private HealthBar healthBar;

	public int startHealth = 5;
	private int health;

	//private bool playerIsNear; // Not in use right now, but might become useful later
	// MATHIAS CONFLICTION
	float distance;
	float distanceToHome; 
	private bool playerLure = false;
	float lureCounter;
	public float runSpeed = 200.0f;
	public float walkSpeed = 100.0f;
	Vector3 lurePos;
	
	public enum enemyStates{idle = 0, walk = 1, run = 2, attack = 3}; 
	public enemyStates state = enemyStates.idle; 
	
	public float listeningRadius = 4;
	private bool canAttack = false;
	private bool isAtHomePos = true;
	private bool outOfReach = false;
	
	private bool youGotCaught = false;
	
	private bool playSound = false;
	
	public GUISkin skin;
	
	public Vector3 startPos;

	

	void Awake()
	{
		player = GameObject.FindGameObjectWithTag(Tags.player);
		shepCtrl = player.GetComponent<ShepherdController>();
		col = GetComponent<SphereCollider>();
		anim = GetComponent<Animator>();
		health = startHealth;
		healthBar = GetComponentInChildren<HealthBar>();
		healthBar.enabled = false;
		moveSpeed = runSpeed;
		startPos = transform.position;
		Idle();
	}

	void Update()
	{
		lureCounter += Time.deltaTime;			// Counter for Lure
		
	// IDLE STATE
		if(state == enemyStates.idle){
			if(Input.GetButtonDown("Fire2") && distance < 30){
				isAtHomePos = true;
				lurePos = player.transform.position - transform.position;
				lureCounter = 0.0f;
				lureEnemy();
				state = enemyStates.walk;
			}
			Idle();
		}
	// WALK/LURE STATE
		if(state == enemyStates.walk){
			
			moveSpeed = walkSpeed;
			if(lureCounter > 3.0f)				// Stop the wolf from the lure
			{
				state = enemyStates.idle;
				playerLure = false;
			}
			Walk(lurePos);
		}
	// RUN STATE	
		if(state == enemyStates.run){
			moveSpeed = runSpeed;
			Vector3 playerPos = player.transform.position;
			Vector3 pos = transform.position;
			Vector3 deltaPos = playerPos - pos;
	
			if(!colliding){
				Run(deltaPos); // If he is not colliding with the wolf keep running the run function.
			}
			Vector3 lookAt = playerPos;
			transform.LookAt(lookAt);
		}
		
		distanceToHome = Vector3.Distance(startPos, transform.position);
		distanceFromPlayer();
		
		
		//Debug.Log(distanceToHome);
		//Debug.Log(state);
		//Debug.Log(canAttack);
		//Debug.Log(distance);
		//Debug.Log(outOfReach);
	}
	
	public void distanceFromPlayer()
	{
		distance = Vector3.Distance(player.transform.position, transform.position);
		// In attack range
		if(distance < 2){
			canAttack = true;
			state = enemyStates.idle; // Should be attack!
			}
			else{
				canAttack = false;
			}	

		if(distance > 15)
		{
			//Debug.Log("The player is out of reach!");
			//outOfReach = true;
			//state = enemyStates.walkBack;
			Vector3 startDirection = startPos - transform.position;
			Vector3 lookAt = startPos;
			transform.LookAt(lookAt);
			RunHome(startDirection);
		}
	}
	
	
	
	
	
	private bool IsPlayer(GameObject obj)
	{
		return (obj.tag == Tags.player);
	}
	
	void Idle()
	{
		rigidbody.velocity = new Vector3(0, 0, 0);
		anim.SetBool("running", false);
		anim.SetBool("walking", false);
	}
	
	void Walk(Vector3 deltaPos)
	{
		rigidbody.velocity = deltaPos.normalized * moveSpeed * Time.deltaTime;
		if(state == enemyStates.walk)	//Otherwise it will be running
			anim.SetBool("walking", true);
		else
			anim.SetBool("walking", false);
	}
	
	void Run(Vector3 deltaPos)
	{
		rigidbody.velocity = deltaPos.normalized * moveSpeed * Time.deltaTime;
		if(state == enemyStates.run)
			anim.SetBool("running", true);
		else
			anim.SetBool("running", false);
	}
	
	void RunHome(Vector3 deltaPos)
	{	
		if(distanceToHome > 2.0f){
			rigidbody.velocity = deltaPos.normalized * moveSpeed * Time.deltaTime;
			anim.SetBool("running", true);
		}
		else
		{
			anim.SetBool("running", false);
			state = enemyStates.idle;
			transform.LookAt(player.transform.position);
		}
	}


	void OnTriggerStay(Collider other)
	{		
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
			*/
			
			if(angle < fieldOfView * 0.5f){	// 110/2 == 55 on both sides of the wolf (therefore 110 field of view.
				if(canAttack == false){
					Debug.DrawLine(transform.position + (transform.up * 0.5f) + transform.forward, player.transform.position + (transform.up * 0.5f));
					state = enemyStates.run;
					youGotCaught = true;
				}
			}
			
		}
	}

	void OnTriggerExit(Collider other)
	{
		if(other.gameObject == GameObject.FindGameObjectWithTag("Player"))
		{
			//playerInSight = false;
			//playerIsNear = false;
			healthBar.enabled = false;
			state = enemyStates.idle;
		}
	}

	void OnTriggerEnter(Collider other)
	{
		if(other.gameObject == GameObject.FindGameObjectWithTag("Player"))
		{
			moveSpeed = runSpeed;	//Add more speed when entering the wolfs trigger Collider
			//playerIsNear = true;
			healthBar.enabled = true;
		}
	}

	void OnCollisionEnter(Collision collision)
	{
		audio.Play();
		// print("Wolf colliding with " + collision.gameObject.tag);
		switch(collision.gameObject.tag)
		{
			case Tags.player:
				transform.LookAt(player.transform);
				colliding = true;
				this.transform.LookAt(player.transform); //Faces player				
				//print("Colliding");
				break;
			case Tags.staff:
				transform.LookAt(player.transform);
				if(shepCtrl.IsAttacking() == false)
					break;
				health--;
				healthBar.SetPercentage(health / (float) startHealth);
				if(health <= 0)
				{
					//Instantiate(Exp, transform.position, Quaternion.identity);
					Destroy(gameObject);
					print ("levelname: " + Application.loadedLevelName);
					if(Application.loadedLevelName == "kill")
					{
						GameObject[] wolves = GameObject.FindGameObjectsWithTag(Tags.enemy);
						print(wolves.Length);
						if(wolves.Length <= 1)
						{
							Application.LoadLevel("PersonalityTest");
						}
					}
				}
				break;
		}
	}

	void OnCollisionExit(Collision collision)
	{
		if(collision.gameObject.tag == Tags.player)	
		{
			colliding = false;
		}		
	}

	void OnGUI()
	{
		if(Application.loadedLevelName == "sneak" && youGotCaught == true)
		{
			GUI.Label(new Rect((Screen.width/3)-20,(Screen.height/8)+(Screen.height/2)+10,(Screen.width/3-20),100),
				"YOU GOT CAUGHT! \nPress 'R' to try again","box");
			if(Input.GetKeyDown(KeyCode.R))
				Application.LoadLevel("sneak");

		}
	}
	
	public void lureEnemy(){
		transform.LookAt(player.transform);
		playerLure = true;
		moveSpeed = walkSpeed;
		//Walk(lurePos);
		state = enemyStates.walk;
	}
}

/*
using UnityEngine;

public class Enemy : MonoBehaviour
{
	private GameObject player;
	private ShepherdController shepCtrl;
	public float moveSpeed = 120f;
	private bool colliding = false;
	private bool playerInSight = false;
	public float fieldOfView = 110f;
	public SphereCollider col;
	private Animator anim;
	private HealthBar healthBar;

	public int startHealth = 5;
	private int health;

	private bool playerIsNear; // Not in use right now, but might become useful later
	// MATHIAS CONFLICTION
	float distance;
	private bool playerLure = false;
	float lureCounter;
	public float runSpeed = 200.0f;
	public float walkSpeed = 100.0f;
	Vector3 lurePos;
	
	public enum enemyStates{idle = 0, walk = 1, run = 2}; 
	public enemyStates state = enemyStates.idle; 
	
	public float listeningRadius = 4;

	

	void Awake()
	{
		player = GameObject.FindGameObjectWithTag(Tags.player);
		shepCtrl = player.GetComponent<ShepherdController>();
		col = GetComponent<SphereCollider>();
		anim = GetComponent<Animator>();
		health = startHealth;
		healthBar = GetComponentInChildren<HealthBar>();
		healthBar.enabled = false;
		moveSpeed = runSpeed;
		Idle();
	}

	void Update()
	{
		if(state == enemyStates.idle){
			distance = Vector3.Distance(player.transform.position, transform.position);	
			//Reset Counter and Run Lure Function
			if(Input.GetButtonDown("Fire2") && distance < 20){
				lurePos = player.transform.position - transform.position;
				lureCounter = 0.0f;
				lureEnemy();
				state = enemyStates.walk;
			}
			Idle();
		}
		
		lureCounter += Time.deltaTime;			// Counter for Lure
		
		if(state == enemyStates.walk){
			moveSpeed = walkSpeed;
			if(lureCounter > 3.0f)				// Stop the wolf from the lure
			{
				state = enemyStates.idle;
			}
			Walk(lurePos);
		}
		
		if(state == enemyStates.run){
			moveSpeed = runSpeed;
			
			Vector3 playerPos = player.transform.position;
			Vector3 pos = transform.position;
			Vector3 deltaPos = playerPos - pos;	
	
			if(!colliding){
				Run(deltaPos); // If he is not colliding keep running the run function.
			}
			Vector3 lookAt = playerPos;
			transform.LookAt(lookAt);
		}
		
		if(playerInSight == false && playerLure == false)
		{
			state = enemyStates.idle;
			Idle();
			return;
		}
		
		Debug.Log(state);
	}
	private bool IsPlayer(GameObject obj)
	{
		return (obj.tag == Tags.player);
	}
	
	void Idle()
	{
		rigidbody.velocity = new Vector3(0, 0, 0);
		anim.SetBool("running", false);
		anim.SetBool("walking", false);
	}
	
	void Walk(Vector3 deltaPos)
	{
		rigidbody.velocity = deltaPos.normalized * moveSpeed * Time.deltaTime;
		if(state == enemyStates.walk)	//Otherwise it will be running
			anim.SetBool("walking", true);
		else
			anim.SetBool("walking", false);
	}
	
	void Run(Vector3 deltaPos)
	{
		rigidbody.velocity = deltaPos.normalized * moveSpeed * Time.deltaTime;
		if(state == enemyStates.run)
			anim.SetBool("running", true);
		else
			anim.SetBool("running", false);
	}


	void OnTriggerStay(Collider other)
	{
		//if(IsPlayer(other.gameObject))	// Collision with a gameObject with tag player
		if(other.gameObject == GameObject.FindGameObjectWithTag("Player"))
		{
			//state = enemyStates.run;
			playerInSight = IsPlayerVisible(other.gameObject);
		}
		if(IsPlayer(other.gameObject))
		{
			playerInSight = IsPlayerVisible(other.gameObject);
		}
	}

	private bool IsPlayerVisible(GameObject player)
	{

		Vector3 direction = player.transform.position - transform.position;
		float angle = Vector3.Angle(direction, transform.forward);

		if(angle > fieldOfView * 0.5f)
			return true;

		RaycastHit hit;
		if(Physics.Raycast(transform.position + (transform.up * 0.5f) + transform.forward, direction.normalized, out hit, col.radius) == false)
			return false;

		// print("Raycast hit");
		// Be careful with colliding with your own mesh!
		//print("Hit: " + hit.collider.gameObject.tag);
		if(hit.collider.gameObject.tag != Tags.player)
			return false;
		
		//print("Player hit");
		//Debug.DrawLine(transform.position + (transform.up * 0.5f) + transform.forward, player.transform.position + (transform.up * 0.5f));
		state = enemyStates.run;
		return true;
	}

	void OnTriggerExit(Collider other)
	{
		if(other.gameObject == GameObject.FindGameObjectWithTag("Player"))
		{
			playerInSight = false;
			playerIsNear = false;
			healthBar.enabled = false;
			state = enemyStates.idle;
		}
	}

	void OnTriggerEnter(Collider other)
	{
		if(other.gameObject == GameObject.FindGameObjectWithTag("Player"))
		{
			moveSpeed = runSpeed;	//Add more speed when entering the wolfs trigger Collider
			playerInSight = IsPlayerVisible(other.gameObject);	
			playerIsNear = true;
			healthBar.enabled = true;
		}
	}

	void OnCollisionEnter(Collision collision)
	{
		// print("Wolf colliding with " + collision.gameObject.tag);
		switch(collision.gameObject.tag)
		{
			case Tags.player:
				transform.LookAt(player.transform);
				colliding = true;
				this.transform.LookAt(player.transform); //Faces player				
				//print("Colliding");
				break;
			case Tags.staff:
				transform.LookAt(player.transform);
				if(shepCtrl.IsAttacking() == false)
					break;
				health--;
				healthBar.SetPercentage(health / (float) startHealth);
				if(health <= 0)
				//Instantiate(Exp, transform.position, Quaternion.identity);
					Destroy(gameObject);
				break;
		}
	}

	void OnCollisionExit(Collision collision)
	{
		if(collision.gameObject.tag == Tags.player)	
		{
			colliding = false;
		}		
	}

	void OnGUI()
	{

	}
	
	public void lureEnemy(){
		transform.LookAt(player.transform);
		playerLure = true;
		moveSpeed = walkSpeed;
		//Walk(lurePos);
		state = enemyStates.walk;
	}
}
*/