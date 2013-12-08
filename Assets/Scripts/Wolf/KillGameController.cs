using UnityEngine;
using System.Collections;
using System;

public class KillGameController : MonoBehaviour 
{

	private bool displayRestart = false,
				 displayComplete = false;

	private int wolvesLeft;

	private Timer restartLevelTimer = null;
	private Timer nextLevelTimer = null;

	void Start()
	{
	
		GameObject[] wolves = GameObject.FindGameObjectsWithTag(Tags.enemy);
		wolvesLeft = wolves.Length;
		foreach(GameObject wolf in wolves)
		{
			Mortal mortal = wolf.GetComponent<Mortal>();
			if(mortal == null) continue;
			mortal.onDeathHandler += OnWolfDiedHandler; 
		}

		GameObject player = GameObject.FindWithTag(Tags.player);
		Mortal playerMortal = player.GetComponent<Mortal>();
		playerMortal.onDeathHandler += OnPlayerDiedHandler;
	}

	void Update()
	{
		if(restartLevelTimer != null)
		{
			restartLevelTimer.TickSeconds(Time.deltaTime);

			if(restartLevelTimer.IsDone())
			{
				RestartLevel();
			}
		} 
		else if(nextLevelTimer != null)
		{
			nextLevelTimer.TickSeconds(Time.deltaTime);
			if(nextLevelTimer.IsDone())
			{
				Application.LoadLevel("wolf_finish");
			}
		}
	}

	
	void OnWolfDiedHandler(Mortal mortal, GameObject killer)
	{
		Debug.Log("Wolf died... :(");
		wolvesLeft--;
		if(wolvesLeft <= 0 && restartLevelTimer == null)
		{
			StartNextLevelTimer();
			displayComplete = true;
		}
	}

	void OnPlayerDiedHandler(Mortal mortal, GameObject killer)
	{
		if(!displayRestart)
		{
			displayRestart = true;
			displayComplete = false; // just to be sure...

			restartLevelTimer = new Timer(4.0f);
		}
	}

	void OnLevelComplete(object obj, EventArgs args)
	{
		if(displayComplete == false)
		{
			StartNextLevelTimer();
			displayComplete = true;
		}
	}

	private void StartNextLevelTimer()
	{
		nextLevelTimer = new Timer(4.0f);
	}

	/*IEnumerator*/ void RestartLevel()
	{
		//yield return new WaitForSeconds(4.0f);
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
				, "You were killed! Restarting level...");
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

		// Display number of wolves left:
		int x = Screen.width - 100;
		int y = Screen.height - 50;

		GUI.Label(new Rect(x, y, 100, 50), (wolvesLeft + " wolves left."));
	}

}
