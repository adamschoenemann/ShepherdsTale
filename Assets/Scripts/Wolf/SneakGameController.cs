using UnityEngine;
using System.Collections;
using System;

public class SneakGameController : MonoBehaviour 
{

	private bool displayRestart = false,
							 displayComplete = false;

	private Timer nextLevelTimer = null;

	void Awake()
	{
	
		WolfController.onPlayerSeen += OnPlayerSeenHandler;
		LevelComplete.onPlayerEntered += OnLevelComplete;
	}

	void Update()
	{
		if(nextLevelTimer != null)
		{
			nextLevelTimer.TickSeconds(Time.deltaTime);
			if(nextLevelTimer.IsDone())
			{
				Application.LoadLevel("wolf_finish");
			}
		}
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
		//Application.LoadLevel("wolf_finish");
		if(displayComplete == false)
		{
			displayComplete = true;
			StartNextLevelTimer();
		}
	}

	private void StartNextLevelTimer()
	{
		nextLevelTimer = new Timer(3.0f);
	}

	IEnumerator RestartLevel()
	{
		yield return new WaitForSeconds(4.0f);
		Application.LoadLevel(Application.loadedLevelName);
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
