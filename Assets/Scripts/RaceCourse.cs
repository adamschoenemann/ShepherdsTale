using UnityEngine;
using System.Collections;

public class RaceCourse : MonoBehaviour {
	
	private CheckPoint [] raceCourse;
	private int gatesChecked = 0;
	private GameObject [] racers = new GameObject[2];
	private int [] racerProgress = {0,0};
	
	// Use this for initialization
	void Start () 
	{
		//Add participants to racers
		racers[0] = GameObject.FindGameObjectWithTag(Tags.loonie);
		racers[1] = GameObject.FindGameObjectWithTag(Tags.player);
		
		//Add checkpoints to raceCourse
		GameObject [] checkPoints = GameObject.FindGameObjectsWithTag(Tags.checkPoint);
		raceCourse = new CheckPoint[checkPoints.Length];
		
		for(int i = 0; i < checkPoints.Length; i++)
		{
			CheckPoint cp = checkPoints[i].GetComponent<CheckPoint>();
			raceCourse[i] = cp;
		}
		
		SortCheckPoints();
				
	}
	// Update is called once per frame
	void Update () 
	{
		if(GetRacerProgress(racers[1]))
			print ("Have racer reached goal: " + GetRacerProgress(racers[1]));
	}
	
	//All gates checked
	public bool GetRacerProgress(GameObject racer)
	{
		gatesChecked = 0;	
		for(int j = 0; j < racers.Length; j++)
			for(int i = 0; i < raceCourse.Length; i++)
			{
				if(raceCourse[i].IsChecked(racers[1]) == true)
				{
					;
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
			if(raceCourse[i].IsChecked(racers[1]) == true) //Check to see if sheperd have passed its first checkpoint
			{
				return true;
			}
		}
		return false;
	}
	
	GameObject IsInFront()
	{
		return racers[1];
		
	}
	
	void SortCheckPoints ()
	{
		CheckPoint tmp;
		for (int x = 0; x < raceCourse.Length-1; x++){
			for (int i = 0; i < raceCourse.Length-1-x; i++){
			    if(raceCourse[i].GetComponent<CheckPoint>().gateIndex > raceCourse[i+1].GetComponent<CheckPoint>().gateIndex)
			    {
			        tmp = raceCourse[i+1];
			        raceCourse[i+1] = raceCourse[i];
			        raceCourse[i] = tmp;
			    }
			}
		}
	}
}
