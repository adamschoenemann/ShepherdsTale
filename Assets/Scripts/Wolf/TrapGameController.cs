using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

public class TrapGameController : MonoBehaviour 
{

	private bool displayRestart = false,
							 displayComplete = false;

	private int nWolvesLeft;

	private GameObject player;

	void Start()
	{
	
		GameObject[] wolves = GameObject.FindGameObjectsWithTag(Tags.enemy);
		List<GameObject> activeWolves = new List<GameObject>(wolves)
			.FindAll(w => w.activeSelf);
		nWolvesLeft = activeWolves.Count;
		foreach(GameObject wolf in activeWolves)
		{
			Mortal mortal = wolf.GetComponent<Mortal>();
			if(mortal == null) continue;
			mortal.onDeathHandler += OnWolfDiedHandler; 
		}
		player = GameObject.FindWithTag(Tags.player);
		player.GetComponent<Mortal>().onDeathHandler = (mortal, killer) => {
			Debug.Log("You died...");
			displayRestart = true;
			StartCoroutine(RestartLevel());
		};

	}

	
	void OnWolfDiedHandler(Mortal mortal, GameObject killer)
	{
		Debug.Log("Wolf died... :(");
		nWolvesLeft--;
		if(nWolvesLeft <= 0)
		{
			Application.LoadLevel("loonie_intro");
			Debug.Log("Level completed!");
			displayComplete = true;
		}
	}

	void OnLevelComplete(object obj, EventArgs args)
	{
		if(displayComplete == false)
		{
			displayComplete = true;
		}
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
