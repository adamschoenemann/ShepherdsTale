using UnityEngine;
using System.Collections;

public class RaceCourse : MonoBehaviour {
	
	private CheckPoint [] raceCourse;
	private int gatesChecked = 0;
	
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
			
	}
	
	// Update is called once per frame
	void Update () 
	{
		if(IsFinished())
			print ("FINISHED");
	}
	
	//All gates checked
	public bool IsFinished()
	{
		gatesChecked = 0;
		for(int i = 0; i < raceCourse.Length; i++)
		{
			if(raceCourse[i].IsChecked() == true)
			{
				gatesChecked++;
			}
		}
		
		if(gatesChecked == raceCourse.Length)
		{
			return true;
		}
		return false;
			
	}
	
	public bool IsRaceStarted ()
	{
		for(int i = 0; i < raceCourse.Length; i++)
		{
			if(raceCourse[i].IsChecked() == true)
			{
				return true;
			}
		}
		return false;
	}
	
}
