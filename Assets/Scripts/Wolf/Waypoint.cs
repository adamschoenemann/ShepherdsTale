using UnityEngine;
using System.Collections;

/**
 * This Waypoint class is for patrolling AIs. This is NOT the WayPoint class
 * for the Loonie Race. Yes, it is confusing.
 * - Adam
 * @type {[type]}
 */
public class Waypoint : MonoBehaviour 
{
	
	public int waitTime = 0;
	public bool permanent = false;

	public static GameObject CreateWaypoint(Vector3 pos)
	{
		GameObject wp = GameObject.CreatePrimitive(PrimitiveType.Cube);
		wp.name = "Genereated Waypoint";
		wp.transform.position = pos;
		wp.AddComponent<Waypoint>();
		wp.renderer.enabled = false;
		return wp;
	}

}
