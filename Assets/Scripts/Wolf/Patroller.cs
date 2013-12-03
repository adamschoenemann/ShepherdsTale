using UnityEngine;
using System.Collections;

[RequireComponent(typeof(Rigidbody))]
public class Patroller : MonoBehaviour {

	public Transform waypointContainer;
	private int waypointIndex = 0;
	private Transform currentWaypoint;

	public float moveSpeed = 8.0f;
	public float minDistance = 2.0f;
	public float turnSpeed = 8.0f;

	public Vector3 lastPosition {get; private set;}
	public Quaternion lastRotation {get; private set;}

	private Timer waitTimer;

	void Awake()
	{
		lastPosition = transform.position;
		lastRotation = transform.rotation;
		currentWaypoint = waypointContainer.GetChild(waypointIndex);
	}

	void FixedUpdate() 
	{
		// if(patrolling == false)
		// 	return;
		// GoToWaypoint();
		// GetNextWaypoint();
	}

	public void StartPatrolling()
	{
		
	}

	public void StopPatrolling()
	{
		lastPosition = transform.position;
	}

	public void ReturnToLastPosition()
	{
		GoToPosition(lastPosition);
	}

	public void ReturnToLastPosition(float speed)
	{
		GoToPosition(lastPosition, speed);
	}

	public void GoToPosition(Vector3 pos, float speed)
	{
		LookAtLerp(pos);
		rigidbody.velocity = (transform.forward * speed);
	}

	private void GoToPosition(Vector3 pos)
	{
		GoToPosition(pos, moveSpeed);
	}

	public bool IsReturnedHome(float thresh = 1.0f)
	{
		return ((transform.position - lastPosition).magnitude < thresh);
	}

	public void GoToWaypoint()
	{
		Vector3 lookAt = currentWaypoint.position;
		lookAt.y = transform.position.y;
		GoToPosition(lookAt);
	}

	public void GetNextWaypoint()
	{
		float distance = (transform.position - currentWaypoint.position).magnitude;
		if(distance < minDistance)
		{
			Waypoint wp = currentWaypoint.GetComponent<Waypoint>();
			if(wp != null)
			{
				if(wp.permanent == true)
				{
					return;
				}
				if(wp.waitTime > 0)
				{
					waitTimer = new Timer(wp.waitTime);
				}
			}

			waypointIndex++;
			if(waypointIndex >= waypointContainer.childCount)
			{
				waypointIndex = 0;
			}
			currentWaypoint = waypointContainer.GetChild(waypointIndex);
			
		}
		// print("WaypointIndex: " + waypointIndex);

	}

	public void WaitAtWaypoint()
	{
		if(waitTimer != null)
			waitTimer.TickSeconds(Time.deltaTime);
		if(Quaternion.Dot(transform.rotation, currentWaypoint.rotation) < 0.95)
		{
			RotateTowards(currentWaypoint.rotation);
		}
	}

	public bool IsWaiting()
	{
		return (currentWaypoint.GetComponent<Waypoint>().permanent
		 || waitTimer != null && !waitTimer.IsDone());
	}

	protected virtual void RotateTowards(Quaternion rotation, float margin = 0.99f)
	{
		if(Quaternion.Dot(transform.rotation, rotation) < margin)
		{
			transform.rotation = Quaternion.Lerp(transform.rotation, rotation, turnSpeed * Time.deltaTime);
		}
		else if(transform.rotation == rotation)
		{
			return;
		}
		else
		{
			transform.rotation = rotation;
		}
	}

	protected virtual void LookAtLerp(Vector3 lookAt)
	{
		Vector3 direction = (lookAt - transform.position);
		Quaternion targetRotation = Quaternion.LookRotation(direction.normalized);
		RotateTowards(targetRotation);
	}

}
