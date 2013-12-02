using UnityEngine;
using System.Collections;

public class ThreeOptions : MonoBehaviour {

	public Texture wolf_fightImage;
	public Texture wolf_alternativeImage;
	public Texture wolf_puzzleImage;

	public Texture loonie_fightImage;
	public Texture loonie_alternativeImage;
	public Texture loonie_puzzleImage;

	public Texture SK_fightImage;
	public Texture SK_alternativeImage;
	public Texture SK_puzzleImage;

	public GUISkin skin;
	
	private string killText; 
	private string lureText;
	private string sneakText;
	
	public enum Episode {Wolf = 0, Loonie = 1, SheepKing = 2};
	public Episode epi = Episode.Loonie;
	
	private string[,] gameScene = new string[,]{	{"wolf_fight", "wolf_puzzle", "wolf_alternative"},{"loonie_fight","loonie_puzzle","loonie_alternative"},{"sheepking_fight","sheepking_puzzle","sheepking_alternative"}};
	
	Color redFont;

	Texture [,] images = new Texture [3,3];
		
	// Use this for initialization
	void Start ()
	{ 
		images[0,0] = wolf_fightImage;
		images[0,1] = wolf_alternativeImage;
		images[0,2] = wolf_puzzleImage;

		images[1,0] = loonie_fightImage;
		images[1,1] = loonie_alternativeImage;
		images[1,2] = loonie_puzzleImage;

		images[2,0] = SK_fightImage;
		images[2,1] = SK_alternativeImage;
		images[2,2] = SK_puzzleImage;
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
		GUI.Label(new Rect(Screen.width/8,50,(Screen.width/3-20),100),"FIGHT");
		GUI.Label(new Rect(10,(Screen.height/8)+(Screen.height/2)+10,(Screen.width/3-20),100),lureText,"box");

		if(GUI.Button(new Rect(10,							Screen.height/8,(Screen.width/3-20),Screen.height/2), images[(int)epi,0]))
			Application.LoadLevel(gameScene[(int)epi,0]);
		
		//Sneak information
		GUI.Label(new Rect((Screen.width/2)+10,50,(Screen.width/3-20),100),"ALTERNATIVE");
		GUI.Label(new Rect(20+((Screen.width/3)-20),(Screen.height/8)+(Screen.height/2)+10,(Screen.width/3-20),100),sneakText,"box");

		if(GUI.Button(new Rect(20+((Screen.width/3)-20),	Screen.height/8,(Screen.width/3-20),Screen.height/2), images[(int)epi,1]))
			Application.LoadLevel(gameScene[(int)epi,1]);
		
		//Kill information
		GUI.Label(new Rect((Screen.width/1.3f)+10,50,(Screen.width/3-20),100),"PUZZLE");
		GUI.Label(new Rect(10+(2*(Screen.width/3)-20),(Screen.height/8)+(Screen.height/2)+10,(Screen.width/3-20),100),killText,"box");

		if(GUI.Button(new Rect(10+(2*(Screen.width/3)-20),	Screen.height/8,(Screen.width/3-20),Screen.height/2), images[(int)epi,2]))
			Application.LoadLevel(gameScene[(int)epi,2]);
		
	}
}
