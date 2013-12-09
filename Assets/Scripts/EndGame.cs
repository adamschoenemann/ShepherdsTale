﻿using UnityEngine;
using System.Collections;

public class EndGame : MonoBehaviour {

	public float marginAmount = 0.2f;
	public bool pilotTesting = false;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnGUI()
	{
		GUI.skin.button.wordWrap = true;

		Rect rect = new Rect((int)(Screen.width * marginAmount),
							 (int)(Screen.height * marginAmount),
							 (int)(Screen.width - 2 * (Screen.width * marginAmount)),
							 (int)(Screen.height - 2 * (Screen.height * marginAmount)));

		if(pilotTesting)
		{
			if(GUI.Button(rect, "Congratulations! You beat the game. Since you're pilot testing, please fill out the final questionnaire. Click to proceed!"))
			{
				Application.LoadLevel("pilot_test_questionnaire");
			}
		}
		else 
		{
			GUI.Label(rect, "Congratulations! You beat the game. Feel free to close your tab or browser!", "button");
		}
	}
}
