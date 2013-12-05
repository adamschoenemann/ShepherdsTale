using UnityEngine;
using System.Collections;

public class ThreeOptions : MonoBehaviour {

	public Texture wolf_fightImage;
	public Texture wolf_lureImage;
	public Texture wolf_sneakImage;

	public Texture loonie_fightImage;
	public Texture loonie_raceImage;
	public Texture loonie_puzzleImage;

	public Texture SK_fightImage;
	public Texture SK_shaveImage;
	public Texture SK_simonImage;

	public GUISkin skin;
/*	
	private string option0Text; 
	private string option1Text;
	private string option2Text;
	private Texture option0Texture;
	private Texture option1Texture;
	private Texture option2Texture;
*/
	private ChoicePoint choices;
	
	public enum Episode {Wolf = 0, Loonie = 1, SheepKing = 2};
	public Episode episode = Episode.Loonie;
	
	/*
	private string[,] gameScene = new string[,]{
		 {"wolf_kill", 
		  "wolf_trap", 
		  "wolf_sneak"},
		 {"loonie_fight",
		  "loonie_race",
		  "loonie_puzzle"},
		 {"sheepking_fight",
		  "sheepking_shave",
		  "sheepking_simon"}};*/
		 
	void Start ()
	{ 
		choices = new ChoicePoint();
		choices.options = new Option[3];
		for(int i = 0; i < choices.options.Length; i++)
		{
			choices.options[i] = new Option();
		}

		// Set text and images
		if(episode == Episode.Wolf)
		{
		 	choices.options[0].sceneName = "wolf_kill";
		 	choices.options[0].description = "Use the staff <color=#ffa500ff>(left mouse button)</color> to kill the wolves.";
		 	choices.options[0].image = wolf_fightImage;

		 	choices.options[1].sceneName = "wolf_trap";
		 	choices.options[1].description = "Make sheep sounds <color=#ffa500ff>(use 'Q' to make the sounds)</color> to lure the wolves into the trap.";
		 	choices.options[1].image = wolf_lureImage;

		 	choices.options[2].sceneName = "wolf_sneak";
		 	choices.options[2].description = "Find a path through the wolf pack by sneaking <color=#ffa500ff>(use 'Left Shift' to sneak)</color>.";
		 	choices.options[2].image = wolf_sneakImage;

/*
			option0Text = ("Use the staff <color=#ffa500ff>(left mouse button)</color> to kill the wolves.");
			option1Text = ("Make sheep sounds <color=#ffa500ff>(use 'Q' to make the sounds)</color> to lure the wolves into the trap.");
			option2Text = ("Find a path through the wolf pack by sneaking <color=#ffa500ff>(use 'Left Shift' to sneak)</color>.");

			option0Texture = wolf_fightImage;
			option1Texture = wolf_lureImage;
			option2Texture = wolf_sneakImage;*/
		} 
		else if(episode == Episode.Loonie)
		{		 
			choices.options[0].sceneName = "loonie_fight";
		 	choices.options[0].description = "Sneak <color=#ffa500ff>(use 'Left Shift' to sneak)</color> up on the Loonie from behind and kill him with the staff <color=#ffa500ff>(left mouse button)</color>.";
		 	choices.options[0].image = loonie_fightImage;

		 	choices.options[1].sceneName = "loonie_race";
		 	choices.options[1].description = "Race the Loonie.";
		 	choices.options[1].image = loonie_raceImage;

		 	choices.options[2].sceneName = "loonie_puzzle";
		 	choices.options[2].description = "Solve a puzzle given by the Loonie - push the pieces around by moving into them, but don't make mistakes!";
		 	choices.options[2].image = loonie_puzzleImage;
/*
			 option0Text = ("Sneak <color=#ffa500ff>(use 'Left Shift' to sneak)</color> up on the Loonie from behind and kill him with the staff <color=#ffa500ff>(left mouse button)</color>.");
			 option1Text = ("Race the Loonie.");
			 option2Text = ("Solve a puzzle given by the Loonie - push the pieces around by moving into them, but don't make mistakes!");

			 option0Texture = loonie_fightImage;
			 option1Texture = loonie_raceImage;
			 option2Texture = loonie_puzzleImage;
*/		}
		else if(episode == Episode.SheepKing)
		{
			choices.options[0].sceneName = "sheepking_fight";
		 	choices.options[0].description = "Use the staff <color=#ffa500ff>(left mouse button)</color> to kill the Sheep King - when he is stunned.";
		 	choices.options[0].image = SK_fightImage;

		 	choices.options[1].sceneName = "sheepking_shave";
		 	choices.options[1].description = "Use <color=#ffa500ff>W, A, S and D</color> to shave the Sheep King while he is sleeping, thus stealing his power.";
		 	choices.options[1].image = SK_shaveImage;

		 	choices.options[2].sceneName = "sheepking_simon";
		 	choices.options[2].description = "Beat the Sheep King's challenge: Repeat the order of sheep baaahs by hitting them with your staff <color=#ffa500ff>(left mouse button)</color>.";
		 	choices.options[2].image = SK_simonImage;

/*
			option0Text = ("Use the staff <color=#ffa500ff>(left mouse button)</color> to kill the Sheep King - when he is stunned.");
			option1Text = ("Use <color=#ffa500ff>W, A, S and D</color> to shave the Sheep King while he is sleeping, thus stealing his power.");
			option2Text = ("Beat the Sheep King's challenge: Repeat the order of sheep baaahs by hitting them with your staff <color=#ffa500ff>(left mouse button)</color>.");

			option0Texture = SK_fightImage;
			option1Texture = SK_shaveImage;
			option2Texture = SK_simonImage;*/
		}
	}
	
	void OnGUI()
	{	
		GUI.skin = this.skin;
		 
		for(int i = 0; i < choices.options.Length; i++)
		{
			GUI.Label(GetTextRect(i), choices.options[i].description, "box");
			if(GUI.Button(GetTextureRect(i), choices.options[i].image))
			{
			  Application.LoadLevel(choices.options[i].sceneName);
			}
		}
/*
		 // Option 1 - fight, fight, fight
		 GUI.Label(GetTextRect(0),option0Text,"box");
		 if(GUI.Button(GetTextureRect(0), option0Texture))
		 {
			  Application.LoadLevel(gameScene[(int)episode,0]);
		 }

		 // Option 2 - sneak, race, shave
		 GUI.Label(GetTextRect(1),option1Text,"box");
		 if(GUI.Button(GetTextureRect(1), option1Texture))
		 {
			  Application.LoadLevel(gameScene[(int)episode,1]);
		 }
		 
		 // Option 3 - lure, puzzle, simon
		 GUI.Label(GetTextRect(2),option2Text,"box");
		 if(GUI.Button(GetTextureRect(2), option2Texture))
		 {
			  Application.LoadLevel(gameScene[(int)episode,2]);
		 }
		 */
	}

	private Rect GetTextRect(int optionNumber)
	{
		 int y = (Screen.height/8) + (Screen.height/2) + 10;
		 int height = 100;
		 int xGap = 10;
		 int width = (Screen.width - 4 * xGap) / 3;
		 int x = (1 + optionNumber) * xGap + optionNumber * width;

		 return new Rect(x, y, width, height);
	}

	private Rect GetTextureRect(int optionNumber)
	{
		 int y = Screen.height/8;
		 int height = Screen.height/2;
		 int xGap = 10;
		 int width = (Screen.width - 4 * xGap) / 3;
		 int x = (1 + optionNumber) * xGap + optionNumber * width;

		 return new Rect(x, y, width, height);
	}

	private struct Option
	{
		public string sceneName;
		public string description;
		public Texture image;
	}

	private struct ChoicePoint
	{
		public Option[] options;

/*
		public void Shuffle()
		{
			Random rnd = new Random();
			Option[] randomized = new Option[options.Length];



			for(int n = 0, i = options.Length; i >= 0; i--, n++)
			{
				output[n] = 
			}




			Option[] temp = options.OrderBy(x => rnd.Next()).ToArray();
			options = temp;
		}*/
	}
}

/*using UnityEngine;
using System.Collections;

public class ThreeOptions : MonoBehaviour {
	
	public Texture killImage;
	public Texture lureImage;
	public Texture sneakImage;
	public GUISkin skin;
	
	private string[] killText 	= {"Use the staff ", "<color=#ffa500ff>(left mouse button)</color> ", "to kill the wolves."};
	private string[] lureText 	= {"Make sheep sounds ", "<color=#ffa500ff>(use 'Q' to make the sounds)</color> ", "to lure the wolves into the cage."};
	private string[] sneakText 	= {"Find a path through the wolfpack by sneaking", "<color=#ffa500ff>(use 'Left Shift' to sneak)</color>" ,"."};
	
	Color redFont;
		
	// Use this for initialization
	void Start () 
	{ 
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	void OnGUI()
	{
		//GUI.contentColor = Color.yellow;
		
		GUI.skin = this.skin;
		
		//Lure information
		
		GUI.Label(new Rect(Screen.width/8,50,(Screen.width/3-20),100),"LURE");
		GUI.Label(new Rect(10,(Screen.height/8)+(Screen.height/2)+10,(Screen.width/3-20),100),lureText[0]+lureText[1]+lureText[2],"box");

		if(GUI.Button(new Rect(10,							Screen.height/8,(Screen.width/3-20),Screen.height/2), lureImage))
			Application.LoadLevel("lure");
		
		//Sneak information
		GUI.Label(new Rect((Screen.width/2)+10,50,(Screen.width/3-20),100),"SNEAK");
		GUI.Label(new Rect(20+((Screen.width/3)-20),(Screen.height/8)+(Screen.height/2)+10,(Screen.width/3-20),100),sneakText[0]+sneakText[1]+sneakText[2],"box");

		if(GUI.Button(new Rect(20+((Screen.width/3)-20),	Screen.height/8,(Screen.width/3-20),Screen.height/2), sneakImage))
			Application.LoadLevel("sneak");
		
		//Kill information
		GUI.Label(new Rect((Screen.width/1.3f)+10,50,(Screen.width/3-20),100),"KILL");
		GUI.Label(new Rect(10+(2*(Screen.width/3)-20),(Screen.height/8)+(Screen.height/2)+10,(Screen.width/3-20),100),killText[0] + killText[1] + killText[2],"box");

		if(GUI.Button(new Rect(10+(2*(Screen.width/3)-20),	Screen.height/8,(Screen.width/3-20),Screen.height/2), killImage))
			Application.LoadLevel("kill");
		
		
	}
}
*/