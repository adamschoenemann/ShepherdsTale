using UnityEngine;

[RequireComponent(typeof(NavMeshAgent))]
public class NavMeshPatroller : MonoBehaviour
{
	public Transform waypointContainer;
	private int waypointIndex = 0;
	private Waypoint currentWaypoint;
	private NavMeshAgent agent;

	private Timer waitTimer;

	public Vector3 lastPosition {get; private set;}
	public Quaternion lastRotation {get; private set;}

	void Awake()
	{
		lastPosition = transform.position;
		lastRotation = transform.rotation;
		currentWaypoint = waypointContainer.GetChild(waypointIndex).GetComponent<Waypoint>();
		agent = GetComponent<NavMeshAgent>();
	}

	public void GoToCurrentWaypoint()
	{
		agent.SetDestination(currentWaypoint.transform.position);
	}

	public bool IsAtWaypoint()
	{
		return (agent.remainingDistance <= float.Epsilon);
	}

	public Waypoint GetNextWaypoint()
	{
		waypointIndex++;
		if(waypointIndex >= waypointContainer.childCount)
			waypointIndex = 0;
		return waypointContainer.GetChild(waypointIndex).GetComponent<Waypoint>();
	}

	public void StopPatrolling()
	{
		if(agent == null)
			return;

		if(agent.hasPath == true)
		{
			agent.Stop();
			agent.ResetPath();
		}
		lastPosition = transform.position;
		lastRotation = transform.rotation;
	}

	public void StartPatrolling()
	{
		agent.SetDestination(currentWaypoint.transform.position);
		agent.Resume();
	}

	public void ReturnToLastPosition()
	{
		agent.SetDestination(lastPosition);
	}

	public void WaitAtWaypoint()
	{
		if(waitTimer != null && currentWaypoint.permanent == false)
		{
			waitTimer.TickSeconds(Time.deltaTime);
		}
	}

	public bool IsWaiting()
	{
		return (waitTimer != null && waitTimer.IsDone() == false);
	}

	public bool IsReturnedHome()
	{
		return ((transform.position - lastPosition).magnitude <= float.Epsilon);
	}

	public void Patrol()
	{
		if(IsAtWaypoint())
		{
			currentWaypoint = GetNextWaypoint();
			if(currentWaypoint.waitTime > 0)
			{
				waitTimer = new Timer(currentWaypoint.waitTime);
				return;
			}
			else
			{
				waitTimer = null;
			}
			GoToCurrentWaypoint();
		}
	}
}