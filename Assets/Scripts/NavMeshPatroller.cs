using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

[RequireComponent(typeof(NavMeshAgent))]
public class NavMeshPatroller : MonoBehaviour
{
	public Transform waypointContainer;
	private int waypointIndex = 0;
	private Waypoint currentWaypoint;
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
		for(int i = 0; i < waypointContainer.childCount; i++)
		{
			waypoints.Add(waypointContainer.GetChild(i).gameObject);
		}
		waypoints.Sort((a, b) => {
		 return a.name.CompareTo(b.name);
		});
		if(debug)
		{
			foreach(GameObject go in waypoints)
				print(go.name);
		}

		currentWaypoint = waypoints[waypointIndex].GetComponent<Waypoint>();
		agent = GetComponent<NavMeshAgent>();
		StartPatrolling();
	}

	public void GoToCurrentWaypoint()
	{
		agent.SetDestination(currentWaypoint.transform.position);
	}

	public bool IsAtWaypoint(float thresh = float.Epsilon)
	{
		// print((currentWaypoint.transform.position - transform.position).magnitude);
		Debug.DrawLine(transform.position, currentWaypoint.transform.position);
		// if(debug) print((currentWaypoint.transform.position - transform.position).magnitude);
		return (currentWaypoint.transform.position - transform.position).magnitude < thresh;
		// return agent.remainingDistance < thresh;
	}

	public Waypoint GetNextWaypoint()
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
		return waypoints[waypointIndex].GetComponent<Waypoint>();
	}

	public void StopPatrolling()
	{
		if(agent == null)
			return;

		agent.Stop();
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
		Waypoint wp = go.GetComponent<Waypoint>();
		if(wp.waitTime > 0)
		{
			if(waitTimer != null && waitTimer.IsDone() == false)
				return;

			print("Gonna wait");
			waitTimer = new Timer(wp.waitTime);
			waitTimer.onDone = self => {
				print("Done");
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
		if(go.tag == Tags.waypoint && go == waypoints[waypointIndex])	
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
		// 	Waypoint prevPoint = currentWaypoint;
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