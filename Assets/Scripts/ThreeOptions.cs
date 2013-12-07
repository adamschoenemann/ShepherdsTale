using UnityEngine;
using System.Collections;

public class ThreeOptions : Loggable
{

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

	private Option[] options;
	
	public enum Episode {Wolf = 0, Loonie = 1, SheepKing = 2};
	public Episode episode = Episode.Loonie;
	
	protected override void SetupLogging()
	{
		base.SetupLogging();
		name = Application.loadedLevelName + "_loggable";
	}

	void Start ()
	{ 
		Screen.showCursor = true;
		options = new Option[3];
		for(int i = 0; i < options.Length; i++)
		{
			options[i] = new Option();
		}

		// Set text and images
		if(episode == Episode.Wolf)
		{
		 	options[0].sceneName = "wolf_kill";
		 	options[0].description = "Use the staff <color=#ffa500ff>(left mouse button)</color> to kill the wolves.";
		 	options[0].image = wolf_fightImage;

		 	options[1].sceneName = "wolf_trap";
		 	options[1].description = "Make sheep sounds <color=#ffa500ff>(by pressing 'Q')</color> to lure the wolves into the trap. Set (and pick up) the trap with <color=#ffa500ff>E</color>.";
		 	options[1].image = wolf_lureImage;

		 	options[2].sceneName = "wolf_sneak";
		 	options[2].description = "Find a path through the wolf pack by sneaking <color=#ffa500ff>(use 'Left Shift' to sneak)</color>.";
		 	options[2].image = wolf_sneakImage;
		} 
		else if(episode == Episode.Loonie)
		{		 
			options[0].sceneName = "loonie_fight";
		 	options[0].description = "Sneak <color=#ffa500ff>(use 'Left Shift' to sneak)</color> up on the Loonie from behind and kill him with the staff <color=#ffa500ff>(left mouse button)</color>.";
		 	options[0].image = loonie_fightImage;

		 	options[1].sceneName = "loonie_race";
		 	options[1].description = "Race the Loonie.";
		 	options[1].image = loonie_raceImage;

		 	options[2].sceneName = "loonie_puzzle";
		 	options[2].description = "Solve a puzzle given by the Loonie - push the pieces around by moving into them, but don't make mistakes!";
		 	options[2].image = loonie_puzzleImage;
		}
		else if(episode == Episode.SheepKing)
		{
			options[0].sceneName = "sheepking_fight";
		 	options[0].description = "Use the staff <color=#ffa500ff>(left mouse button)</color> to kill the Sheep King - when he is stunned after running into a pillar.";
		 	options[0].image = SK_fightImage;

		 	options[1].sceneName = "sheepking_shave";
		 	options[1].description = "Use <color=#ffa500ff>W, A, S and D</color> to shave the Sheep King while he is sleeping, thus stealing his power.";
		 	options[1].image = SK_shaveImage;

		 	options[2].sceneName = "sheepking_simon";
		 	options[2].description = "Beat the Sheep King's challenge: Repeat the order of sheep baaahs by hitting them with your staff <color=#ffa500ff>(left mouse button)</color>.";
		 	options[2].image = SK_simonImage;
		}

		Shuffle(options);
	}
	
	void OnGUI()
	{	
		GUI.skin = this.skin;

		GUI.Label(new Rect(Screen.width/3, 10, Screen.width/3, Screen.height/8 - 10), "Select an option with the mouse.");
		 
		for(int i = 0; i < options.Length; i++)
		{
			if(GUI.Button(GetOptionRect(i), "")) // The actual, almost invisible button.
			{
				Screen.showCursor = false;

				// Log choice
				LogEntry entry = new LogEntry(this, "Choice")
					.AddString("choiceName", Application.loadedLevelName)
					.AddString("sceneName", options[i].sceneName);
				logger.Enqueue(entry);

				Application.LoadLevel(options[i].sceneName);
			}
			
			GUI.Button(GetTextureRect(i), options[i].image);
			GUI.Label(GetTextRect(i), options[i].description, "box");
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

	private Rect GetOptionRect(int optionNumber)
	{
		int y = Screen.height/8;
		int height = Screen.height/2 + 110;
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

	private void Shuffle(Option[] array)
	{
		Option temp;
		for(int k = 0; k < 9; k++) // Shuffle thru whole array nine times
		for(int i = 0; i < array.Length; i++)
		{
			int other = Random.Range(0, array.Length-1);
			if(other != i)
			{
				temp = array[i];
				array[i] = array[other];
				array[other] = temp;
			}
		}
	}

	public string GetOptionsOrder()
	{
		return (options[0].sceneName + ", " + options[1].sceneName + ", " + options[2].sceneName).ToString();
	}

	public override bool ShouldLogRoutinely()
	{
		return false;
	}

	protected override void BeforeEnqueueEntry(LogEntry entry)
	{

	}

}