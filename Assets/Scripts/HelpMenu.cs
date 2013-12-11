using UnityEngine;
using System.Collections;

public class HelpMenu : Loggable 
{
	private KeyCode openKey = KeyCode.H;
	private bool open = false;
	private string openText = "\n";
	private string closedText;
	private string standardcontrols = "\nMove around using a mouse and <color=#ffa500ff>W</color>, <color=#ffa500ff>A</color>, <color=#ffa500ff>S</color> and <color=#ffa500ff>D</color>.\n";

	void Start () 
	{
		closedText = "Press <color=#ffa500ff>" + openKey + "</color> to get help.\n";
		switch(Application.loadedLevelName)
		{
			case "wolf_kill": 
				openText = "Use the staff <color=#ffa500ff>(Left Mouse Button)</color> to kill the wolves. Pick up cherries to regain health.\n" + standardcontrols;
				break;				
			case "wolf_trap":
				openText = "Make sheep sounds (by pressing '<color=#ffa500ff>Q</color>') to lure the wolves into the trap. Set (and pick up) the trap by pressing '<color=#ffa500ff>E</color>'.\n" + standardcontrols;
				break;
			case "wolf_sneak": 
				openText = "Find a path through the wolf pack by sneaking (use '<color=#ffa500ff>Left Shift</color>' to sneak).\n" + standardcontrols;
				break;
			case "loonie_fight": 
				openText = "Sneak (use '<color=#ffa500ff>Left Shift</color>' to sneak) up on the Loonie from behind and kill him with the staff (<color=#ffa500ff>Left Mouse Button</color>).\n" + standardcontrols;
				break;
			case "loonie_race": 
				openText = "Win a race against the Loonie. Make sure to pass all checkpoints! If you need it, you can restart the race by pressing <color=#ffa500ff>R</color>.\n" + standardcontrols;
				break;
			case "loonie_puzzle": 
				openText = "Solve a puzzle given by the Loonie - push the pieces to the far corner with the little spheres by moving into them, but don't make mistakes! If you need it, you can restart the race by pressing <color=#ffa500ff>Q</color>.\n" + standardcontrols;
				break;
			case "sheepking_fight": 
				openText = "Use the staff (<color=#ffa500ff>Left Mouse Button</color>) to kill the Sheep King. Stun him for a while by making him run into a pillar.\n" + standardcontrols;
				break;
			case "sheepking_shave": 
				openText = "Use <color=#ffa500ff>W</color>, <color=#ffa500ff>A</color>, <color=#ffa500ff>S</color> and <color=#ffa500ff>D</color> to shave the Sheep King while he is sleeping, thus stealing his power.\n";
				break;
			case "sheepking_simon": 
				openText = "Complete the Sheep King's challenge: Listen carefully to the order of baaahs, and then make the sheep repeat their baaahs in the correct order by hitting them with your staff (<color=#ffa500ff>Left Mouse Button</color>).\n" + standardcontrols;
				break;
			case "wolf_main":
				openText = "Go to the sign at the end of the road.\n" + standardcontrols;
				break;
			case "loonie_main":
				openText = "Go to the sign by the Loonie.\n" + standardcontrols;
				break;
			case "sheepking_main":
				openText = "Follow the bridge to the sign by the castle.\n" + standardcontrols;
				break;
		}
		openText += "\nPress escape to release the mouse from the game.";
		openText += "\nClose this window by pressing <color=#ffa500ff>" + openKey + "</color> again.\n";
	}

	void Update()
	{
		if(Input.GetKeyDown(openKey))
		{
			open = !open;

			LogEntry entry = new LogEntry(this, "HelpMenu")
				.AddInt("IsOpen", (open) ? 1 : 0);
			EnqueueEntry(entry);
		}
	}
	
	void OnGUI()
	{
		GUI.skin.box.wordWrap = true;
		if(open)
		{
			GUI.Label(GetDisplayRect(), openText, "box");
		}
		else // Display that the button can be pressed to open help menu
		{
			GUI.Label(GetClosedRect(), closedText);
		}
	}

	private Rect GetDisplayRect()
	{
		int y = Screen.height/8;
		int height = Screen.height/2;
		int xGap = 10;
		int width = (Screen.width - 4 * xGap) / 3;
		int x = 2 * xGap + width;
		
		return new Rect(x, y, width, height);
	}

	private Rect GetClosedRect()
	{
		int x = Screen.width - 140;
		int y = Screen.height - 30;
		return new Rect(x, y, 150, 25);
	}

	// Logging API ;)
	public override bool ShouldLogRoutinely()
	{
		return false;
	}

	protected override void BeforeEnqueueEntry(LogEntry entry)
	{
		
	}
}



