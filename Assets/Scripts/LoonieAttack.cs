using UnityEngine;
using System.Collections;

public class LoonieAttack : MonoBehaviour {
	
	float rayLength = 2.0f;
	LoonieAnimator loonieScript;
	GameObject player;
	PlayerMovement playerScript;
	bool stuckToPlayer;
	
	//LERP VARIABLES
    public float speed = 1.0F;
    private float startTime;
    private float journeyLength;
    public Transform target;
    public float smooth = 5.0F;
	
	// Use this for initialization
	void Start () {
		player = GameObject.FindGameObjectWithTag("Player");
		loonieScript = gameObject.GetComponent<LoonieAnimator>();
		
		startTime = Time.time;
        journeyLength = Vector3.Distance(transform.position, player.transform.position);
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
				
				if(loonieScript.anim.GetBool("Jump") == false)
					transform.parent = player.transform;
			}
		}
	}
}
