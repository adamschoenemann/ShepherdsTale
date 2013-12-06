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

	private ChoicePoint choices;
	
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
		 	choices.options[1].description = "Make sheep sounds <color=#ffa500ff>(by pressing 'Q')</color> to lure the wolves into the trap. Set (and pick up) the trap with <color=#ffa500ff>E</color>.";
		 	choices.options[1].image = wolf_lureImage;

		 	choices.options[2].sceneName = "wolf_sneak";
		 	choices.options[2].description = "Find a path through the wolf pack by sneaking <color=#ffa500ff>(use 'Left Shift' to sneak)</color>.";
		 	choices.options[2].image = wolf_sneakImage;
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
		}
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
				Screen.showCursor = false;

				// Log choice
				LogEntry entry = new LogEntry(this, "Choice")
					.AddString("choiceName", Application.loadedLevelName)
					.AddString("sceneName", choices.options[i].sceneName);
				logger.Enqueue(entry);

				Application.LoadLevel(choices.options[i].sceneName);
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

	private struct Option
	{
		public string sceneName;
		public string description;
		public Texture image;
	}

	private struct ChoicePoint
	{
		public Option[] options;

		// TODO Shuffle method here
	}

	public override bool ShouldLogRoutinely()
	{
		return false;
	}

	protected override void BeforeEnqueueEntry(LogEntry entry)
	{

	}

}