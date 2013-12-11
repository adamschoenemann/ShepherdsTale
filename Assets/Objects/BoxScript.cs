using UnityEngine;
using System.Collections;

public class BoxScript : Loggable {
	
	//var lerpedColor : Color = Color.white;
	public GameObject totemHead;
	Color lerpedColor = Color.white;
	
	float rayLength = 0.5f;
	float rayY	= 0.3f;
	float pushSpeed = 1.0f;
	float threshold = 0.25f;
	
	bool wallBack;
	bool wallFront;
	bool wallLeft;
	bool wallRight;
	
	bool moveForward;
	bool moveBackward;
	bool moveRight;
	bool moveLeft;
	
	// what we hit in the scene
	RaycastHit hit;
	RaycastHit wallHit;
	
	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () {
		
		//Debug.Log(forwardMove());
		
		// FRONT
		if(forwardMove())
		{
			transform.position += new Vector3(0,	0,	(-pushSpeed)*Time.deltaTime);
			print("HIT_FORWARD!");
		}
		
		// BACK	
		if(backwardMove())
		{	
			transform.position += new Vector3(0,	0,	pushSpeed*(Time.deltaTime));
			print("HIT_BACKWARD!");
		}
		
		// RIGHT
		if(rightMove())
		{	
			transform.position += new Vector3((-pushSpeed)*Time.deltaTime,	0,	0);
			print("HIT_RIGHT!");
		}
			
		// LEFT
		if(leftMove())
		{	
			transform.position += new Vector3(pushSpeed*Time.deltaTime,	0,	0);
			print("HIT_LEFT!");
		}
		
		
	}
	
	void OnTriggerStay(Collider other)
	{
		if(other.gameObject.tag == "Button")
		{
			renderer.material.color = Color.red;
			if(totemHead != null)
			{
				LogEntry entry = new LogEntry(this, "TotemDestroy")
					.AddGameObject("box", gameObject);
				EnqueueEntry(entry);
				Destroy(totemHead);
				
			}
		}
	}
	
	void OnTriggerExit(Collider other)
	{
		if(other.gameObject.tag == "Button")
		{
			renderer.material.color = Color.yellow;
		}
	}
	
	bool forwardMove()
	{
		for(int i = -1; i<= 1; i++)
		{
			Ray rayForward 	= new Ray(transform.position + transform.up*rayY + transform.right*(i*threshold), transform.forward*rayLength);
			Ray rayBackward	= new Ray(transform.position + transform.up*rayY + transform.right*(i*threshold), transform.forward*(-rayLength));
			Debug.DrawRay(transform.position + transform.up*rayY + transform.right*(i*threshold), transform.forward*rayLength);
			
			RaycastHit wallHit;
			if(Physics.Raycast(rayBackward, out wallHit, rayLength))
			{
				if(wallHit.collider.gameObject.tag == "Wall" || wallHit.collider.gameObject.tag == "Box")
				{
					return false;
				}
			}
			
			RaycastHit hit;
			if(Physics.Raycast(rayForward, out hit, rayLength))
			{
				if(hit.collider.gameObject.tag == "Player")
				{
					return true;
				}
			}
		}
		return false;
	}

	
	bool backwardMove()
	{
		for(int i = -1; i<= 1; i++)
		{
			Ray rayForward 	= new Ray(transform.position + transform.up*rayY + transform.right*(i*threshold), transform.forward*rayLength);
			Ray rayBackward	= new Ray(transform.position + transform.up*rayY + transform.right*(i*threshold), transform.forward*(-rayLength));
			Debug.DrawRay(transform.position + transform.up*rayY + transform.right*(i*threshold), transform.forward*(-rayLength));
			
			RaycastHit wallHit;
			if(Physics.Raycast(rayForward, out wallHit, rayLength))
			{
				if(wallHit.collider.gameObject.tag == "Wall" || wallHit.collider.gameObject.tag == "Box")
				{
					return false;
				}
			}
			
			RaycastHit hit;
			if(Physics.Raycast(rayBackward, out hit, rayLength))
			{
				if(hit.collider.gameObject.tag == "Player" && wallFront == false)
				{
					return true;
				}
			}
		}
		return false;
	}
	
	bool rightMove()
	{
		for(int i = -1; i<= 1; i++)
		{
			Ray rayLeft		= new Ray(transform.position + transform.up*rayY + transform.forward*(i*threshold), transform.right*(-rayLength));
			Ray rayRight	= new Ray(transform.position + transform.up*rayY + transform.forward*(i*threshold), transform.right*rayLength);
			Debug.DrawRay(transform.position + transform.up*rayY + transform.forward*(i*threshold), transform.right*rayLength);
			
			RaycastHit wallHit;
			if(Physics.Raycast(rayLeft, out wallHit, rayLength))
			{
				if(wallHit.collider.gameObject.tag == "Wall" || wallHit.collider.gameObject.tag == "Box")
				{
					return false;
				}
			}
			RaycastHit hit;
			if(Physics.Raycast(rayRight, out hit, rayLength))
			{
				if(hit.collider.gameObject.tag == "Player" && wallLeft == false)
				{
					return true;
				}
			}
		}	
		return false;
	}
	
	bool leftMove()
	{
		for(int i = -1; i<= 1; i++)
		{
			Ray rayRight	= new Ray(transform.position + transform.up*rayY + transform.forward*(i*threshold), transform.right*rayLength);
			Ray rayLeft		= new Ray(transform.position + transform.up*rayY + transform.forward*(i*threshold), transform.right*(-rayLength));
			Debug.DrawRay(transform.position + transform.up*rayY + transform.forward*(i*threshold), transform.right*(-rayLength));
			
			RaycastHit wallHit;
			if(Physics.Raycast(rayRight, out wallHit, rayLength))
			{
				if(wallHit.collider.gameObject.tag == "Wall" || wallHit.collider.gameObject.tag == "Box")
				{
					return false;
				}
			}
			
			RaycastHit hit;
			if(Physics.Raycast(rayLeft, out hit, rayLength))
			{
				if(hit.collider.gameObject.tag == "Player")
				{
					return true;
				}
			}
		}
		return false;
	}
}