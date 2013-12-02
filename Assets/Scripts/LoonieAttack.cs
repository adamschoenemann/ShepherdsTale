using UnityEngine;
using System.Collections;

public class LoonieAttack : MonoBehaviour {
	
	float rayLength = 1.8f;
	LoonieAnimator loonieScript;
	GameObject player;
	PlayerMovement playerScript;
	PlayerAnimation playerAnimationScript;
	bool startCounter;
	
	//LERP VARIABLES
    public float speed = 1.0F;
    private float startTime;
    private float journeyLength;
    public float smooth = 5.0F;
	
	Timer timer;
	
	// Use this for initialization
	void Start () {
		player = GameObject.FindGameObjectWithTag("Player");
		playerScript = player.gameObject.GetComponent<PlayerMovement>();
		playerAnimationScript = player.gameObject.GetComponent<PlayerAnimation>();
		loonieScript = gameObject.GetComponent<LoonieAnimator>();
		
		startTime = Time.time;
        journeyLength = Vector3.Distance(transform.position, player.transform.position);
		
		timer = new Timer(500);
	}
	
	// Update is called once per frame
	void Update () {
		
		RaycastHit hitRay;
		Ray attackRay = new Ray(transform.position + transform.up, transform.forward*rayLength);
		Debug.DrawRay(transform.position + transform.up, transform.forward*rayLength);
		
		float distCovered = (Time.time - startTime) * speed;
        float fracJourney = distCovered / journeyLength;
		
		if(Physics.Raycast(attackRay, out hitRay, rayLength))
		{
			if(hitRay.collider.gameObject.tag == "Player")
			{
				collider.isTrigger = true;
				rigidbody.isKinematic = true;
				transform.position = Vector3.Lerp(transform.position, player.transform.position, fracJourney);
				loonieScript.anim.SetBool("Jump", true);
				Debug.Log("YOU ARE CAUGHT!");
				playerScript.runSpeed = 0.0f;
				playerAnimationScript.anim.SetBool("LoonieStuck", true);
				startCounter = true;
			}
		}
		
		if(startCounter)
		{
			timer.TickSeconds (Time.deltaTime);
			if(timer.IsDone ())
			{
				print ("NU");
				transform.parent = player.transform;
				//Time.timeScale = 0.0f;
				if(Input.GetButtonDown("StartOver"))
				{
					Application.LoadLevel("loonie_fight");
				}
			}
		}
	}
	
	void OnGUI () {
		if(startCounter)
			GUI.Box(new Rect(100,20,Screen.height/2,Screen.width/2), "You got caught!\n Press Q to start over.");
	}
}
