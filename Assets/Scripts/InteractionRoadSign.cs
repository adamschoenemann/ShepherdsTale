using UnityEngine;
using System.Collections;

public class InteractionRoadSign: MonoBehaviour {
	
	public enum Level { Wolf, Loonie, SheepKing };
	public Level level;

	private SphereCollider interactionCollider;
	private bool isInteracting = false;
	
	void Awake ()
	{
		interactionCollider = GetComponent<SphereCollider>();
	}
	
	void OnTriggerEnter(Collider other)
	{
		if(other.gameObject.tag == Tags.player)
		{
			isInteracting = true;
		}
	}
	
	void OnTriggerStay(Collider other)
	{
		if(other.gameObject.tag == Tags.player && Input.GetKeyDown(KeyCode.E))
		{
			switch(level)
			{
				case Level.Wolf:
					Application.LoadLevel("wolf_intro");
					break;
				case Level.Loonie:
					Application.LoadLevel("loonie_three_options");
					break;
				case Level.SheepKing:
					Application.LoadLevel("sheepking_three_options");
					break;
			}	
		}
	}
	
	void OnTriggerExit(Collider other)
	{
		if(other.gameObject.tag == Tags.player)
		{
			isInteracting = false;
		}
		
	}
	
	void OnGUI()
	{
		if(isInteracting == true)
			GUI.Label(new Rect((Screen.width/2)-100,Screen.height/4,200,30),"Press 'E' to read the sign","box");
		
	}
}
