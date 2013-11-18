using UnityEngine;
using System.Collections;


public class LoonieRace : MonoBehaviour {
	
	public Animator anim;							// a reference to the animator on the character
	private AnimatorStateInfo currentBaseState;	
	
	public float seeingThresh = 10.0f;
	public float fieldOfView = 100.0f;
	public float moveSpeed = 200.0f;
	
	private bool raceStart = false;
	private GameObject player;
	private GameObject raceCourse;
	private GameObject [] wayPoints;
	private int atWayPointIndex = 0;


	
	// Use this for initialization
	void Start () 
	{
		anim 		= GetComponent<Animator>();
		
		raceCourse 	= GameObject.FindGameObjectWithTag(Tags.raceCourse);
		player 		= GameObject.FindGameObjectWithTag(Tags.player);
		wayPoints 	= GameObject.FindGameObjectsWithTag(Tags.wayPoint);
		
		SortWayPoints();
	}
	
	// Update is called once per frame
	void Update () 
	{
		if(raceStart == true)
			Race(GetWayPointIndex());
		else
			IsPlayerStarted();
		
		print(GetWayPointIndex());
	}
	
	void Race (int moveTowardsWayPoint)
	{
		Run(wayPoints[moveTowardsWayPoint].GetComponent<WayPoint>().wayPointPos);
		
	}
	
	void Run(Vector3 wayPointPosition)
	{
		Vector3 deltaPos = wayPointPosition - transform.position;
		rigidbody.velocity = deltaPos.normalized * moveSpeed * Time.deltaTime;
		if(raceStart)
		{
			anim.SetBool("Run", true);
			transform.LookAt(wayPoints[GetWayPointIndex()].GetComponent<WayPoint>().wayPointPos);
		}
		else
			anim.SetBool("Run", false);
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
				Race (GetWayPointIndex());
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
