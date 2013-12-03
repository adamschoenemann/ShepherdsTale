using UnityEngine;
using System.Collections;
using System;

public class SneakGameController : GameController
{

	private bool displayRestart = false,
							 displayComplete = false;

	void Awake()
	{
	
		WolfController.onPlayerSeen += OnPlayerSeenHandler;
		LevelComplete.onPlayerEntered += OnLevelComplete;
	}

	void OnPlayerSeenHandler(object wolf, EventArgs args)
	{
		if(displayRestart == false)
		{
			displayRestart = true;
			StartCoroutine(RestartLevel());
		}
		// Application.LoadLevel(Application.loadedLevelName);
	}

	void OnLevelComplete(object obj, EventArgs args)
	{
		if(displayComplete == false)
		{
			displayComplete = true;
		}
	}

	void OnGUI()
	{
		if(displayRestart)
		{
			float width = 200f, height = 20f;
			GUI.Label(
				new Rect(Screen.width * 0.5f - width/2,
								 Screen.height * 0.5f - height/2,
								 200f,
								 20f)
				, "You were seen! Restarting level...");
		}

		if(displayComplete)
		{
			float width = 200f, height = 20f;
			GUI.Label(
				new Rect(Screen.width * 0.5f - width/2,
								 Screen.height * 0.5f - height/2,
								 200f,
								 20f)
				, "You completed the level!");
		}
	}

}
