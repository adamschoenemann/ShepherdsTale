using UnityEngine;
using System.Collections;

public class ThreeOptions : MonoBehaviour {
	
	public Texture killImage;
	public Texture lureImage;
	public Texture sneakImage;
	public GUISkin skin;
	
	private string killText; 
	private string lureText;
	private string sneakText;
	
	public enum Episode {Wolf = 0, Loonie = 1, SheepKing = 2};
	public Episode epi = Episode.Loonie;
	
	private string[,] gameScene = new string[,]{	{"lure", "sneak", "kill"},{"PersonalityTest","main_scene_Loonie","main_scene"}};
	
	Color redFont;
		
	// Use this for initialization
	void Start () 
	{ 

	}
	
	// Update is called once per frame
	void Update () {
		
		// MOVE TO START WHEN FINISH
		if(epi == Episode.Wolf)
		{
			killText 	= ("Use the staff <color=#ffa500ff>(left mouse button)</color> to kill the wolves.");
			lureText 	= ("Make sheep sounds <color=#ffa500ff>(use 'Q' to make the sounds)</color> to lure the wolves into the cage.");
			sneakText 	= ("Find a path through the wolfpack by sneaking <color=#ffa500ff>(use 'Left Shift' to sneak)</color>.");
		}
		
		if(epi == Episode.Loonie)
		{		
			killText 	= ("Penis");
			lureText 	= ("Penus");
			sneakText 	= ("Penas");
		}
		
		if(epi == Episode.SheepKing)
		{
			killText 	= ("FIGHT");
			lureText 	= ("SHAVE");
			sneakText 	= ("???");
		}
	}
	
	void OnGUI()
	{	
		//GUI.contentColor = Color.yellow;	
		GUI.skin = this.skin;
		
		//Lure information
		GUI.Label(new Rect(Screen.width/8,50,(Screen.width/3-20),100),"LURE");
		GUI.Label(new Rect(10,(Screen.height/8)+(Screen.height/2)+10,(Screen.width/3-20),100),lureText,"box");

		if(GUI.Button(new Rect(10,							Screen.height/8,(Screen.width/3-20),Screen.height/2), lureImage))
			Application.LoadLevel(gameScene[(int)epi,0]);
		
		//Sneak information
		GUI.Label(new Rect((Screen.width/2)+10,50,(Screen.width/3-20),100),"SNEAK");
		GUI.Label(new Rect(20+((Screen.width/3)-20),(Screen.height/8)+(Screen.height/2)+10,(Screen.width/3-20),100),sneakText,"box");

		if(GUI.Button(new Rect(20+((Screen.width/3)-20),	Screen.height/8,(Screen.width/3-20),Screen.height/2), sneakImage))
			Application.LoadLevel(gameScene[(int)epi,1]);
		
		//Kill information
		GUI.Label(new Rect((Screen.width/1.3f)+10,50,(Screen.width/3-20),100),"KILL");
		GUI.Label(new Rect(10+(2*(Screen.width/3)-20),(Screen.height/8)+(Screen.height/2)+10,(Screen.width/3-20),100),killText,"box");

		if(GUI.Button(new Rect(10+(2*(Screen.width/3)-20),	Screen.height/8,(Screen.width/3-20),Screen.height/2), killImage))
			Application.LoadLevel(gameScene[(int)epi,2]);
		
	}
}
