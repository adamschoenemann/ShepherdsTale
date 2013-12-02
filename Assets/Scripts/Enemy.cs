using UnityEngine;

public class Enemy : MonoBehaviour
{

	private GameObject player;
	private ShepherdController shepCtrl;
	public float moveSpeed = 120f;
	private bool colliding = false;
	private bool playerInSight = false;
	public float fieldOfView = 180.0f;
	public SphereCollider col;
	private Animator anim;
	private HealthBar healthBar;

	public int startHealth = 5;
	private int health;
	
	public float listeningRadius = 4;


	private bool playerIsNear; // Not in use right now, but might become useful later

	void Awake()
	{
		player = GameObject.FindGameObjectWithTag(Tags.player);
		shepCtrl = player.GetComponent<ShepherdController>();
		col = GetComponent<SphereCollider>();
		anim = GetComponent<Animator>();
		health = startHealth;
		healthBar = GetComponentInChildren<HealthBar>();
		healthBar.enabled = false;
	}

	void Update()
	{
		//print("playerInSight: " + playerInSight);		
		if(playerInSight == false)
		{
			Idle();
			return;
		}
		Vector3 playerPos = player.transform.position;
		Vector3 pos = transform.position;
		print("Colliding: " + colliding);
		Vector3 deltaPos = playerPos - pos;
		if(!colliding)
		{
			//transform.position = transform.position + deltaPos * moveSpeed * Time.deltaTime;
			Run(deltaPos);
		}
		Vector3 lookAt = playerPos;// + Vector3.Scale(player.renderer.bounds.extents, Vector3.up);
		// rigidbody.MoveRot
		transform.LookAt(lookAt);

					// playerInSight = false;
		
	}

	void Run(Vector3 deltaPos)
	{
		rigidbody.velocity = deltaPos.normalized * moveSpeed * Time.deltaTime;
		anim.SetBool("running", true);
	}

	void Idle()
	{
		rigidbody.velocity = new Vector3(0, 0, 0);
		anim.SetBool("running", false);
	}

	void OnTriggerStay(Collider other)
	{
		if(IsPlayer(other.gameObject))
		{
			playerInSight = IsPlayerVisible(other.gameObject);
		}
		

	}

	private bool IsPlayer(GameObject obj)
	{
		return (obj.tag == Tags.player);
	}

	/*
	Use to implement hearing functionality
	 */
	private bool CanHearObj()
	{
		return false;
	}

	private bool IsPlayerVisible(GameObject player)
	{

		Vector3 direction = player.transform.position - transform.position;
		float angle = Vector3.Angle(direction, transform.forward);
				
		if(angle < fieldOfView * 0.5f)
			return true;
		
			
		RaycastHit hit;
		if(Physics.Raycast(transform.position + (transform.up * 0.5f) + transform.forward, direction.normalized, out hit, col.radius) == false)
			return false;

		// print("Raycast hit");
		// Be careful with colliding with your own mesh!
		
		print("Hit: " + hit.collider.gameObject.tag);
		if(hit.collider.gameObject.tag != Tags.player)
		{
			print("No Player");
			return false;
		}

		print("Still visible");
		Debug.DrawLine(transform.position + (transform.up * 0.5f) + transform.forward, player.transform.position + (transform.up * 0.5f));
		return true;
		
	
	}

	void OnTriggerExit(Collider other)
	{
		if(IsPlayer(other.gameObject))
		{
			playerInSight = false;
			playerIsNear = false;
			healthBar.enabled = false;
		}
	}

	void OnTriggerEnter(Collider other)
	{
		if(IsPlayer(other.gameObject))
		{
			playerInSight = IsPlayerVisible(other.gameObject);	
			playerIsNear = true;
			healthBar.enabled = true;

			Logger.Record(this.gameObject,"bite");
		}
	}

	void OnCollisionEnter(Collision collision)
	{
		// print("Wolf colliding with " + collision.gameObject.tag);
				
		switch(collision.gameObject.tag)
		{
			case Tags.player:
				colliding = true;
				print("Colliding");
				this.transform.LookAt(player.transform); //Faces player
				break;
			case Tags.staff:
				this.transform.LookAt(player.transform); //Faces player
				if(shepCtrl.IsAttacking() == false)
					break;
				health--;
				healthBar.SetPercentage(health / (float) startHealth);
				if(health <= 0)
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
	
}