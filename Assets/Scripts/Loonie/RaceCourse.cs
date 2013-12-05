using UnityEngine;
using System.Collections;

public class RaceCourse : MonoBehaviour {
	
	private CheckPoint [] raceCourse;
	private int gatesChecked = 0;
	private GameObject [] racers = new GameObject[2];
	
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
		if(GetRacerProgress(racers[1]) == raceCourse.Length)
			print ("Have player reached goal: " + GetRacerProgress(racers[1]));
		
		//print ("Loonie progress: " + GetRacerProgress(racers[0]));
		
		//print("Who is in front? " + IsInFront());
		print (raceCourse.Length);
	}
	
	// All gates checked
	public int GetRacerProgress(GameObject racer)
	{
		gatesChecked = 0;	
		for(int i = 0; i < raceCourse.Length; i++)
		{
			if(raceCourse[i].IsChecked(racer) == true)
			{
				gatesChecked++;
			}
		}
		
		return gatesChecked;
	}
	
	public bool IsGoalReached()
	{
		if(GetRacerProgress(racers[0]) == raceCourse.Length)
		{
			// Lose
			print ("goal reached loonie");
			return true;
		}
		else if(GetRacerProgress(racers[1]) == raceCourse.Length)
		{
			// Win
			print ("goal reached player");
			Application.LoadLevel("sheepking_intro");
			return true;
		}
		
		return false;
	}
	
	//Check to see if shepherd have passed its first checkpoint
	public bool IsRaceStarted ()
	{
		for(int i = 0; i < raceCourse.Length; i++)
		{
			if(raceCourse[i].IsChecked(racers[1]) == true) 
			{
				return true;
			}
		}
		return false;
	}
	
	//Check to see who is in front, returns racer in front
	public GameObject IsInFront()
	{
		if(GetRacerProgress(racers[0]) < GetRacerProgress(racers[1])) //loonie = 0, player = 1
		{
			//print ("player is in front");
			return racers[1];
		}
		else if(GetRacerProgress(racers[0]) > GetRacerProgress(racers[1]))
		{
			//print ("loonie is in front");
			return racers[0];
		}
		else
		{
			float distanceToGateLoonie = Vector3.Distance(racers[0].transform.position,raceCourse[GetRacerProgress(racers[0])].transform.position);
			float distanceToGatePlayer = Vector3.Distance(racers[1].transform.position,raceCourse[GetRacerProgress(racers[1])].transform.position);
		
			if(distanceToGatePlayer < distanceToGateLoonie)
			{
				//print ("player is in front");
				return racers[1];
			}
			else
			{
				//print ("loonie is in front");
				return racers[0];
			}
		}
			
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
