using UnityEngine;
using System.Collections;


public class LoonieRace : MonoBehaviour {
	
	public Animator anim;							// a reference to the animator on the character
	private AnimatorStateInfo currentBaseState;	
	
	public float seeingThresh = 10.0f;
	public float fieldOfView = 100.0f;
	
	public float moveSpeed;
	public float defaultSpeed = 320.0f;
	private float walkSpeed = 120.0f;
	private float turboSpeed = 450.0f;
	
	private bool timerRunning = false;
	private bool raceStart = false;
	private GameObject player;
	private GameObject raceCourse;
	private GameObject [] wayPoints;

	private float speedCorrection = 0.02f;
	
	private Timer timerBoost = new Timer(5000);


	
	// Use this for initialization
	void Start () 
	{
		moveSpeed = defaultSpeed;
		
		anim 		= GetComponent<Animator>();
		
		raceCourse 	= GameObject.FindGameObjectWithTag(Tags.raceCourse);
		player 		= GameObject.FindGameObjectWithTag(Tags.player);
		wayPoints 	= GameObject.FindGameObjectsWithTag(Tags.wayPoint);
		
		SortWayPoints();
	}
	
	// Update is called once per frame
	void Update () 
	{
		//If the no one have passed the goal line, keep running
		if(raceStart == true && raceCourse.GetComponent<RaceCourse>().IsGoalReached() == false) 
		{
			Race(GetWayPointIndex());
			
			//if the loonie is behind then wait 5 seconds and start running faster
			if(IsBehind() && raceStart && timerRunning == false)
				timerRunning = true;
			
			if(timerRunning)
			{
				timerBoost.TickSeconds(Time.deltaTime);
				
				if(timerBoost.IsDone())
					timerRunning = false;	
			}
			
			if(timerBoost.IsDone() && IsBehind())
			{
				IncreaseSpeed();
			}
			else
			{
				DecreaseSpeed();
			}
		}
		// walks towards last way point and stops
		else if(raceCourse.GetComponent<RaceCourse>().IsGoalReached())
		{
			if(wayPoints[wayPoints.Length-1].GetComponent<WayPoint>().wayPointChecked == false)
			{
				print ("make loonie walk to finish line");
				Walk (wayPoints[wayPoints.Length-1].GetComponent<WayPoint>().wayPointPos);	
			}
			else
			{
				print ("at end point");
				anim.SetBool("Run", false);
				anim.SetBool("Walk", false);
				anim.SetBool("Idle", true);
				transform.position = wayPoints[wayPoints.Length-1].GetComponent<WayPoint>().wayPointPos;
				transform.rotation = Quaternion.identity;
				transform.LookAt(player.transform);
			}
			
		}
		else
			IsPlayerStarted();
		
	}
	
	void Race (int moveTowardsWayPoint)
	{
		Run(wayPoints[moveTowardsWayPoint].GetComponent<WayPoint>().wayPointPos);
		
	}
	
	
	void Run(Vector3 wayPointPosition)
	{
		Vector3 deltaPos = wayPointPosition - transform.position;
		rigidbody.velocity = deltaPos.normalized * moveSpeed * speedCorrection;
		if(raceStart)
		{
			anim.SetBool("Run", true);
			transform.LookAt(wayPoints[GetWayPointIndex()].GetComponent<WayPoint>().wayPointPos);
		}
		else
			anim.SetBool("Run", false);
	}
	
	void Walk(Vector3 wayPointPosition)
	{
		Vector3 deltaPos = wayPointPosition - transform.position;
		rigidbody.velocity = deltaPos.normalized * moveSpeed * speedCorrection;
		if(raceCourse.GetComponent<RaceCourse>().IsGoalReached())
		{
			moveSpeed = walkSpeed;
			anim.SetBool("Run",false);
			anim.SetBool("Walk", true);
			transform.LookAt(wayPoints[wayPoints.Length-1].GetComponent<WayPoint>().wayPointPos);
		}
		else
			anim.SetBool("Walk", false);
	}
	
	int GetWayPointIndex ()
	{
		for(int i = 0; i < wayPoints.Length; i ++)
		{
			if(wayPoints[i].GetComponent<WayPoint>().wayPointChecked == false)
			{
				return wayPoints[i].GetComponent<WayPoint>().index;
			}
		}

		return 0;
	}
	
	void IncreaseSpeed ()
	{
		if(moveSpeed < turboSpeed)
			moveSpeed += 0.5f;
	}
	
	void DecreaseSpeed ()
	{
		if(raceCourse.GetComponent<RaceCourse>().IsInFront() == this.gameObject && moveSpeed > 320.0f)
			moveSpeed -= 0.5f;
	}
	
	//Is loonie in first place?
	bool IsBehind ()
	{
		if(raceCourse.GetComponent<RaceCourse>().IsInFront() == this.gameObject)
			return false;
		else
			return true;
	}
	
	void IsPlayerStarted ()
	{
		if(raceCourse.GetComponent<RaceCourse>().IsRaceStarted())
		{
			raceStart = true;
			print ("started");
		}
		
	}
	
	
	void OnCollisionEnter(Collision collision)
	{
		switch (collision.gameObject.tag)
		{
			case Tags.wayPoint:
				if(raceCourse.GetComponent<RaceCourse>().IsGoalReached() == false)
					Race(GetWayPointIndex());
				break;
			default:
				break;
		}
	}
	
	void SortWayPoints ()
	{
		GameObject tmp;
		for (int x = 0; x < wayPoints.Length-1; x++){
			for (int i = 0; i < wayPoints.Length-1-x; i++){
			    if(wayPoints[i].GetComponent<WayPoint>().index > wayPoints[i+1].GetComponent<WayPoint>().index)
			    {
			        tmp = wayPoints[i+1];
			        wayPoints[i+1] = wayPoints[i];
			        wayPoints[i] = tmp;
			    }
			}
		}
	}
}
