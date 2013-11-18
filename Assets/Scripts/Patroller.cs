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

	private bool patrolling = true;
	private Vector3 lastPosition;

	void Awake()
	{
		currentWaypoint = waypointContainer.GetChild(waypointIndex);
	}

	void FixedUpdate() 
	{
		if(patrolling == false)
			return;
		GoToWaypoint();
		GetNextWaypoint();
	}

	public void StartPatrolling()
	{
		patrolling = true;
	}

	public void StopPatrolling()
	{
		patrolling = false;
		lastPosition = transform.position;
	}

	void GoToWaypoint()
	{
		Vector3 lookAt = currentWaypoint.position;
		lookAt.y = transform.position.y;
		LookAtLerp(lookAt);
		rigidbody.velocity = (transform.forward * moveSpeed);
	}

	void GetNextWaypoint()
	{
		float distance = (transform.position - currentWaypoint.position).magnitude;
		if(distance < minDistance)
		{
			waypointIndex++;
			if(waypointIndex >= waypointContainer.childCount)
			{
				waypointIndex = 0;
			}
			currentWaypoint = waypointContainer.GetChild(waypointIndex);
		}
		print("WaypointIndex: " + waypointIndex);

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
