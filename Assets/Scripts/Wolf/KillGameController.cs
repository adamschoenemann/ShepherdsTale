using UnityEngine;
using System.Collections;
using System;

/**
 * Should be rewritten to use coroutines again!!
 * @type {[type]}
 */
public class KillGameController : GameController
{

	private bool displayRestart = false,
				 displayComplete = false;

	private int wolvesLeft;


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

	void OnWolfDiedHandler(Mortal mortal)
	{
		Debug.Log("Wolf died... :(");
		wolvesLeft--;
		if(wolvesLeft <= 0)
		{
			Debug.Log("Level completed!");
		}
	}

	void OnPlayerDiedHandler(Mortal mortal)
	{
		if(!displayRestart)
		{
			displayRestart = true;
			displayComplete = false; // just to be sure...
			StartCoroutine(RestartLevel());
		}
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
	}

}
