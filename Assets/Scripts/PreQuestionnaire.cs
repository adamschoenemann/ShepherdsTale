using UnityEngine;
using System.Collections;

public class PreQuestionnaire : MonoBehaviour {

	public string questionnaireSceneName;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnGUI()
	{
		GUI.skin.button.wordWrap = true;
		
		if(GUI.Button(new Rect((int)(Screen.width * 0.3),
							   (int)(Screen.height * 0.3),
							   (int)(Screen.width - 2 * (Screen.width * 0.3)),
							   (int)(Screen.height - 2 * (Screen.height * 0.3))),
								"Welcome! In order to play the game, please start by filling out this questionnaire. Click to begin!"))
		{
			Application.LoadLevel(questionnaireSceneName);
		}
	}
}
