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
	private int chosenOption = -1;
	
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
			options[0].title = "Kill the wolves";
			options[0].description = "Use the staff <color=#ffa500ff>(Left Mouse Button)</color> to kill the wolves. Pick up cherries to regain health.";
			options[0].image = wolf_fightImage;
			
			options[1].sceneName = "wolf_trap";
			options[1].title = "Trap the wolves";
			options[1].description = "Make sheep sounds (by pressing '<color=#ffa500ff>Q</color>')' to lure the wolves into the trap. Set (and pick up) the trap by pressing '<color=#ffa500ff>E</color>'.";
			options[1].image = wolf_lureImage;
			
			options[2].sceneName = "wolf_sneak";
			options[2].title = "Evade the wolves";
			options[2].description = "Find a path through the wolf pack by sneaking (use '<color=#ffa500ff>Left Shift</color>' to sneak).";
			options[2].image = wolf_sneakImage;
		} 
		else if(episode == Episode.Loonie)
		{		 
			options[0].sceneName = "loonie_fight";
			options[0].title = "Outfight the Loonie"; //"Use your staff"; // hit-n-hide, Assassinate the Loonie, Outlive the Loonie, Outfight the Loonie
			options[0].description = "Sneak (use '<color=#ffa500ff>Left Shift</color>' to sneak) up on the Loonie from behind and kill him with the staff (<color=#ffa500ff>Left Mouse Button</color>).";
			options[0].image = loonie_fightImage;
			
			options[1].sceneName = "loonie_race";
			options[1].title = "Outrun the Loonie"; // "Use your legs"; // run-n-run, Outrun the Loonie
			options[1].description = "Win a race against the Loonie. Make sure to pass all checkpoints!";
			options[1].image = loonie_raceImage;
			
			options[2].sceneName = "loonie_puzzle";
			options[2].title = "Outsmart the Loonie"; // "Use your brain"; // think-n-push, Outsmart the Loonie
			options[2].description = "Solve a puzzle given by the Loonie - push the pieces to the far corner with the little spheres by moving into them, but don't make mistakes!";
			options[2].image = loonie_puzzleImage;
		}
		else if(episode == Episode.SheepKing)
		{
			options[0].sceneName = "sheepking_fight";
			options[0].title = "Slaughter the Sheep King with superior tactics";
			options[0].description = "Use the staff (<color=#ffa500ff>Left Mouse Button</color>) to kill the Sheep King. Stun him for a while by making him run into a pillar.";
			options[0].image = SK_fightImage;
			
			options[1].sceneName = "sheepking_shave";
			options[1].title = "Shave the Sheep King with elegant sneakiness"; // people probably don't know what shear means.
			options[1].description = "Use <color=#ffa500ff>W</color>, <color=#ffa500ff>A</color>, <color=#ffa500ff>S</color> and <color=#ffa500ff>D</color> to shave the Sheep King while he is sleeping, thus stealing his power.";
			options[1].image = SK_shaveImage;
			
			options[2].sceneName = "sheepking_simon";
			options[2].title = "Overpower the Sheep King with your memory skills";
			options[2].description = "Beat the Sheep King's challenge: Listen carefully to the order of baaahs, and then make the sheep repeat their baaahs in the correct order by hitting them with your staff (<color=#ffa500ff>Left Mouse Button</color>).";
			options[2].image = SK_simonImage;
		}
		
		Shuffle(options);
		
		// Log it!
		LogEntry entry = new LogEntry(this, "ThreeOptionsOrder")
			.AddString("option_00", options[0].sceneName)
				.AddString("option_01", options[1].sceneName)
				.AddString("option_02", options[2].sceneName)
				.AddString("sceneName", Application.loadedLevelName)
				.AddInt("episode", (int) episode);
		EnqueueEntry(entry);
	}
	
	void OnGUI()
	{	
		GUI.skin = this.skin;
		
		if(chosenOption < 0)
		{
			GUI.Label(new Rect(Screen.width/3, 10, Screen.width/3, Screen.height/8 - 10), "Select an option with the mouse.");
			
			for(int i = 0; i < options.Length; i++)
			{
				if(GUI.Button(GetOptionRect(i), "")) // The actual, almost invisible button.
				{
					chosenOption = i;
					
					// Log choice
					LogEntry entry = new LogEntry(this, "Choice")
						.AddString("choiceName", Application.loadedLevelName)
							.AddString("sceneName", options[i].sceneName);
					EnqueueEntry(entry);
				}
				
				GUI.Button(GetTextureRect(i), options[i].image);
				GUI.Label(GetTextRect(i), options[i].title, "box");
			}
		}
		else // Display instructions
		{
			GUI.Label(GetTextureRect(1), options[chosenOption].description, "box");
			
			if(GUI.Button(GetTextRect(1), "Click here to start!"))
			{
				Screen.showCursor = false;
				Application.LoadLevel(options[chosenOption].sceneName);
			}
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
		public string title;
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