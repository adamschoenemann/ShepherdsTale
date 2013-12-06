using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

[RequireComponent(typeof(NavMeshAgent))]
public class NavMeshPatroller : MonoBehaviour
{
	public Transform waypointContainer;
	private int waypointIndex = 0;
	private WolfWaypoint currentWaypoint;
	private List<GameObject> waypoints;
	private NavMeshAgent agent;

	private Timer waitTimer;
	public bool reverse = false;
	private int direction = 1;

	public bool debug = false;

	public Vector3 lastPosition {get; private set;}
	public Quaternion lastRotation {get; private set;}

	void Awake()
	{
		lastPosition = transform.position;
		lastRotation = transform.rotation;

		waypoints = new List<GameObject>();
		if(waypointContainer != null)
		{
			for(int i = 0; i < waypointContainer.childCount; i++)
			{
				waypoints.Add(waypointContainer.GetChild(i).gameObject);
			}
			waypoints.Sort((a, b) => {
			 return a.name.CompareTo(b.name);
			});
			// if(debug)
			// {
			// 	foreach(GameObject go in waypoints)
			// 		print(go.name);
			// }		
		}
		else
		{
			GameObject wp = WolfWaypoint.CreateWaypoint(transform.position);
			wp.GetComponent<WolfWaypoint>().permanent = true;
			waypoints.Add(wp);
		}
		
		currentWaypoint = waypoints[waypointIndex].GetComponent<WolfWaypoint>();
		agent = GetComponent<NavMeshAgent>();
		OnArriveAtWaypoint(currentWaypoint.gameObject);
		// StartPatrolling();
	}

	public void GoToCurrentWaypoint()
	{
		agent.SetDestination(currentWaypoint.transform.position);
	}

	public bool IsAtWaypoint(float thresh = float.Epsilon)
	{
		Debug.DrawLine(transform.position, currentWaypoint.transform.position);
		return (currentWaypoint.transform.position - transform.position)
			.magnitude < thresh;
		// return agent.remainingDistance < thresh;
	}

	public WolfWaypoint GetNextWaypoint()
	{
		waypointIndex += direction;
		if(waypointIndex >= waypoints.Count || waypointIndex < 0)
		{
			if(reverse == false)
				waypointIndex = 0;
			else if(reverse)
			{
				direction *= -1;
				waypointIndex += direction*2;
			}
		}
		if(debug) print("wayPointIndex: " + waypointIndex);
		return waypoints[waypointIndex].GetComponent<WolfWaypoint>();
	}

	public void StopPatrolling()
	{
		if(agent == null)
			return;

		agent.Stop();
		rigidbody.velocity = Vector3.zero;
		if(agent.hasPath == true)
		{
			agent.ResetPath();
		}
		lastPosition = transform.position;
		lastRotation = transform.rotation;
	}

	public void StartPatrolling()
	{
		GoToCurrentWaypoint();
		agent.Resume();
	}

	public void ReturnToLastPosition()
	{
		agent.SetDestination(lastPosition);
	}

	public void WaitAtWaypoint()
	{
		if(waitTimer == null || currentWaypoint.permanent == true)
			return;
		waitTimer.TickSeconds(Time.deltaTime);
	}

	public bool IsWaiting()
	{
		if(waitTimer == null)
			return false;
		return (waitTimer.IsDone() == false);
	}

	public bool IsReturnedHome()
	{
		return ((transform.position - lastPosition).magnitude <= 0.8f);
	}

	public void OnArriveAtWaypoint(GameObject go)
	{
		if(debug) print("OnArriveAtWaypoint");
		WolfWaypoint wp = go.GetComponent<WolfWaypoint>();
		if(wp.waitTime > 0 || wp.permanent == true)
		{
			if(waitTimer != null && waitTimer.IsDone() == false)
				return;

			if(debug) print("Gonna wait");
			waitTimer = new Timer(wp.waitTime);
			waitTimer.onDone = self => {
				if(debug) print("Timer Done");
				waitTimer = null;
				currentWaypoint = GetNextWaypoint();
				StartPatrolling();
			};
			StopPatrolling();
		}
		else
		{
			currentWaypoint = GetNextWaypoint();
			StartPatrolling();
		}
	}

	void OnTriggerEnter(Collider other)
	{
		GameObject go = other.gameObject;
		if(debug)
		{
			print("Current wp: " + waypoints[waypointIndex].name);
			print("trigger wp: " + go.name);
		}
		if(go.tag == Tags.wolfWaypoint && go == waypoints[waypointIndex])	
		{
			OnArriveAtWaypoint(go);
		}
	}

	public void Patrol()
	{
		if(IsWaiting())
		{
			WaitAtWaypoint();
		}
		// if(IsWaiting())
		// {
		// 	if(debug) print("Waiting... ");
		// 	WaitAtWaypoint();
		// 	return;
		// }

		// if(IsAtWaypoint(0.8f))
		// {
		// 	WolfWaypoint prevPoint = currentWaypoint;
		// 	currentWaypoint = GetNextWaypoint();
		// 	if(prevPoint.waitTime > 0)
		// 	{
		// 		waitTimer = new Timer(currentWaypoint.waitTime);
		// 		waitTimer.onDone = self => StartPatrolling();
		// 		StopPatrolling();
		// 	}
		// 	else
		// 	{
		// 		StartPatrolling();
		// 	}
		// 	return;
		// }
	}
}