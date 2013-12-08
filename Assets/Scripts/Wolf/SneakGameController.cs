using UnityEngine;
using System.Collections;
using System;

public class SneakGameController : GameController 
{

	void Awake()
	{
		LevelComplete lvlComplete = GameObject.Find("LevelCompleteTrigger").GetComponent<LevelComplete>();
		lvlComplete.onPlayerEntered += OnLevelComplete;
		
		foreach(GameObject wolf in GameObject.FindGameObjectsWithTag(Tags.enemy))
		{
			wolf.GetComponent<WolfController>().onPlayerSeen += OnPlayerSeenHandler;
		}

	}

	void OnPlayerSeenHandler(object wolf, EventArgs args)
	{
		if(displayRestart == false && displayComplete == false) // Only do something if player hasn't finished level
		{
			displayRestart = true;
			StartCoroutine(RestartLevel());
		}
		// Application.LoadLevel(Application.loadedLevelName);
	}

	void OnLevelComplete(object obj, EventArgs args)
	{
		//Application.LoadLevel("wolf_finish");
		if(displayComplete == false)
		{
			displayComplete = true;
			StartCoroutine(StartNextLevel());
		}
	}

	public IEnumerator StartNextLevel()
	{
		OnLevelRestarting();
		yield return new WaitForSeconds(4.0f);
		Application.LoadLevel("wolf_finish");
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
				, "You got through!");
		}
	}

}
