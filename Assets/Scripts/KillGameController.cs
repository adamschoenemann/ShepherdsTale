using UnityEngine;
using System.Collections;
using System;

public class KillGameController : MonoBehaviour 
{

	private bool displayRestart = false,
							 displayComplete = false;

	void Start()
	{
	
		GameObject[] wolves = GameObject.FindGameObjectsWithTag(Tags.enemy);
		foreach(GameObject wolf in wolves)
		{
			Mortal mortal = wolf.GetComponent<Mortal>();
			if(mortal == null) continue;
			mortal.onDeathHandler += OnWolfDiedHandler; 
		}

		LevelComplete.onPlayerEntered += OnLevelComplete;
	}

	
	void OnWolfDiedHandler(Mortal mortal)
	{
		Debug.Log("Wolf died... :(");
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
