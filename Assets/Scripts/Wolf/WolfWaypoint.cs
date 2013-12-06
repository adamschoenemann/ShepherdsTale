using UnityEngine;
using System.Collections;

public class WolfWaypoint : MonoBehaviour 
{
	
	public int waitTime = 0;
	public bool permanent = false;

	public static GameObject CreateWaypoint(Vector3 pos)
	{
		GameObject wp = GameObject.CreatePrimitive(PrimitiveType.Cube);
		wp.name = "Genereated Waypoint";
		wp.tag = Tags.wolfWaypoint;
		wp.transform.position = pos;
		wp.AddComponent<WolfWaypoint>();
		wp.renderer.enabled = false;
		return wp;
	}

}
