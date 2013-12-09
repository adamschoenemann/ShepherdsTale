using UnityEngine;
using System.Collections;

public class CheckPoint : MonoBehaviour {
	
	private bool gateCheckedPlayer = false;
	private bool gateCheckedLoonie = false;
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
	
	public bool IsChecked(GameObject racer)
	{
		if(racer.gameObject == GameObject.FindGameObjectWithTag(Tags.player))		
			return gateCheckedPlayer;
		else
			return gateCheckedLoonie;
	}
	
	void OnTriggerEnter (Collider other)
	{
		if(other.gameObject == GameObject.FindGameObjectWithTag(Tags.player))
		{
			gateCheckedPlayer = true;
			renderer.material.SetColor("_Colour", new Color(1, 1, 0, 1));
		}
		else if(other.gameObject == GameObject.FindGameObjectWithTag(Tags.loonie))
			gateCheckedLoonie = true;
	}
	
	void OnTriggerStay (Collider other)
	{
		
	}
	
	void OnTriggerExit (Collider other)
	{
		
	}
}
