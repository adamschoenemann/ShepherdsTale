using UnityEngine;
using System.Collections;

public class CheckPoint : MonoBehaviour {
	
	private bool gateChecked = false;
	public int gateIndex = 0;
	
	/*
	public int IndexCheckPoint 
	{
		get
		{
			return indexCheckPoint;
		}
		set
		{
			GameObject [] checkPoints = GameObject.FindGameObjectsWithTag(Tags.checkPoint);
			for( int i = 0; i < checkPoints.Length; i++)
			{
				CheckPoint cp = checkPoints[i].GetComponent<CheckPoint>();
				if(cp.indexCheckPoint == value)
				{
					print ("Checkpoint index already exists");
					return;
				}
			}
			indexCheckPoint = value;
		}
	}
	*/
	
	
	// Use this for initialization
	void Start () 
	{

	}
	
	// Update is called once per frame
	void Update () 
	{
		
	}
	
	public bool IsChecked()
	{
		return gateChecked;
	}
	
	void OnTriggerEnter (Collider other)
	{
		print("trigger finger is burning");
		if(other.gameObject == GameObject.FindGameObjectWithTag(Tags.player))
			gateChecked = true;
	}
	
	void OnTriggerStay (Collider other)
	{
		
	}
	
	void OnTriggerExit (Collider other)
	{
		
	}
}
