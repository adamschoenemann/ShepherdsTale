using UnityEngine;
using System.Collections;

public class RaceCourse : MonoBehaviour {
	
	private CheckPoint [] raceCourse;
	private int [] gateOrder;
	
	// Use this for initialization
	void Start () 
	{
		GameObject [] checkPoints = GameObject.FindGameObjectsWithTag(Tags.checkPoint);
		raceCourse = new CheckPoint[checkPoints.Length];
		
		for(int i = 0; i < checkPoints.Length; i++)
		{
			CheckPoint cp = checkPoints[i].GetComponent<CheckPoint>();
			raceCourse[i] = cp;
		}
		
		gateOrder = new int[checkPoints.Length];		
	
	}
	
	// Update is called once per frame
	void Update () 
	{
		Debug.Log ("kan du se mig=");

		Debug.ClearDeveloperConsole();
	}
}
