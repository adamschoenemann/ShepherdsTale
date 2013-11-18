using UnityEngine;
using System.Collections;


public class LoonieRace : MonoBehaviour {
	
	public Animator anim;							// a reference to the animator on the character
	private AnimatorStateInfo currentBaseState;	
	
	public float moveSpeed = 200.0f;
	private bool raceStart = false;
	private GameObject player;
	private GameObject raceCourse;

	
	// Use this for initialization
	void Start () 
	{
		anim = GetComponent<Animator>();
		raceCourse 	= GameObject.FindGameObjectWithTag(Tags.raceCourse);
		player 		= GameObject.FindGameObjectWithTag(Tags.player);
		
	}
	
	// Update is called once per frame
	void Update () 
	{
		if(raceStart == false)
		{
			IsPlayerStarted();
		}
			
	}
	
	void IsPlayerStarted ()
	{
		if(raceCourse.GetComponent<RaceCourse>().IsRaceStarted())
		{
			anim.SetBool("Run", true);
			raceStart = true;
			print ("started");
		}
		
	}
}
