﻿using UnityEngine;
using System.Collections;

public class SKKillGameController : MonoBehaviour {

	private Timer endTimer;

	// Use this for initialization
	void Start () {
		GameObject player = GameObject.FindWithTag(Tags.player);
		Mortal playerMortal = player.GetComponent<Mortal>();

		playerMortal.onDeathHandler += (self, killer) => {
			Application.LoadLevel("sheepking_fight");
		};

		GameObject sheepking = GameObject.FindWithTag(Tags.enemy);
		Mortal sheepkingMortal = sheepking.GetComponent<Mortal>();

		sheepkingMortal.onDeathHandler += (self, killer) => {
			Debug.Log("Loooooooaod game_finish!");
			endTimer = new Timer(4.0f);
			 // ATM this is not working. Level is loaded in SK_KillScript.Awake(), in the onDeathHandler.
		};
	}

	void Update()
	{
		if(endTimer != null)
		{
			endTimer.TickSeconds(Time.deltaTime);

			if(endTimer.IsDone())
			{
				Application.LoadLevel("game_finish");	
			}
		}
	}

	void OnGUI()
	{
		if(endTimer != null)
		{
			GUI.Label(
				new Rect(	Screen.width / 3,
							Screen.height / 3,
							Screen.width / 3,
							Screen.height / 3)
				, "You beat the Sheep King!", "box");
		}
	}


}
