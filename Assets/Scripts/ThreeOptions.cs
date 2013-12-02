using UnityEngine;
using System.Collections;

public class ThreeOptions : MonoBehaviour {

	public Texture wolf_fightImage;
	public Texture wolf_sneakImage;
	public Texture wolf_lureImage;

	public Texture loonie_fightImage;
	public Texture loonie_raceImage;
	public Texture loonie_puzzleImage;

	public Texture SK_fightImage;
	public Texture SK_shaveImage;
	public Texture SK_simonImage;

	public GUISkin skin;
	
	private string option0Text; 
	private string option1Text;
	private string option2Text;
	private Texture option0Texture;
	private Texture option1Texture;
	private Texture option2Texture;
	
	public enum Episode {Wolf = 0, Loonie = 1, SheepKing = 2};
	public Episode episode = Episode.Loonie;
	
	private string[,] gameScene = new string[,]{
		{"wolf_fight", "wolf_sneak", "wolf_puzzle"},
		{"loonie_fight","loonie_puzzle","loonie_alternative"},
		{"sheepking_fight","sheepking_alternative","sheepking_puzzle"}};
		
	void Start ()
	{ 
		// Set text and images
		if(episode == Episode.Wolf)
		{
			option0Text = ("Use the staff <color=#ffa500ff>(left mouse button)</color> to kill the wolves.");
			option1Text = ("Make sheep sounds <color=#ffa500ff>(use 'Q' to make the sounds)</color> to lure the wolves into the cage.");
			option2Text = ("Find a path through the wolf pack by sneaking <color=#ffa500ff>(use 'Left Shift' to sneak)</color>.");

			option0Texture = wolf_fightImage;
			option1Texture = wolf_sneakImage;
			option2Texture = wolf_lureImage;
		} 
		else if(episode == Episode.Loonie)
		{		
			option0Text = ("Sneak <color=#ffa500ff>(use 'Left Shift' to sneak)</color> up on the Loonie from behind and kill him with the staff <color=#ffa500ff>(left mouse button)</color>.");
			option1Text = ("Race the Loonie.");
			option2Text = ("Solve a puzzle given by the Loonie - push the pieces around by moving into them.");

			option0Texture = loonie_fightImage;
			option1Texture = loonie_raceImage;
			option2Texture = loonie_puzzleImage;
		}
		else if(episode == Episode.SheepKing)
		{
			option0Text = ("Use the staff <color=#ffa500ff>(left mouse button)</color> to kill the Sheep King - when he is stunned.");
			option1Text = ("Use <color=#ffa500ff>W, A, S and D</color> to shave the Sheep King while he is sleeping, thus stealing his power.");
			option2Text = ("Beat the Sheep King's challenge: Repeat the order of sheep baaahs by hitting them with your staff <color=#ffa500ff>(left mouse button)</color>.");

			option0Texture = SK_fightImage;
			option1Texture = SK_shaveImage;
			option2Texture = SK_simonImage;
		}
	}
	
	void OnGUI()
	{	
		GUI.skin = this.skin;
		
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
}
