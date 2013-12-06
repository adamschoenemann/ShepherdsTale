using UnityEngine;
using System.Collections;

/**
 * LoonieRace waypoint
 * @type {[type]}
 */
public class WayPoint : MonoBehaviour {
	public int index = 0;
	public Vector3 wayPointPos;
	public bool wayPointChecked = false;
	
	// Use this for initialization
	void Start () 
	{
		wayPointPos = transform.position;
	}
	
	// Update is called once per frame
	void Update () 
	{
	
	}
	
	void OnTriggerEnter(Collider other)
	{
		if(other.gameObject == GameObject.FindGameObjectWithTag("Loonie"))
		{
			wayPointChecked = true;
		}
	}
}
