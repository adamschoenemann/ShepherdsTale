using UnityEngine;
using System.Collections;
using System;

public class SneakGameController : MonoBehaviour 
{

	private bool displayRestart = false,
							 displayComplete = false;

	void Awake()
	{
		GameObject[] wolves = GameObject.FindGameObjectsWithTag(Tags.enemy);
		foreach(GameObject go in wolves)
		{
			WolfController wolf = go.GetComponent<WolfController>();
			wolf.onPlayerSeen += OnPlayerSeenHandler;
		}
		// GameObject lvlCompleteTrigger = GameObject.Find("LevelCompleteTrigger");
		// LevelComplete lvlComplete = lvlCompleteTrigger.GetComponent<LevelComplete>();
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
