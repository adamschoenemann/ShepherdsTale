using UnityEngine;
using System.Collections;

public class PreQuestionnaire : Loggable
{

	public string questionnaireSceneName;

	public override bool ShouldLogRoutinely()
	{
		return false;
	}

	protected override void BeforeEnqueueEntry(LogEntry entry)
	{

	}

	void LogChoice(int val)
	{
		LogEntry entry = new LogEntry(this, "IsReturning")
			.AddInt("returning", val);
		EnqueueEntry(entry);
			
	}


	void OnGUI()
	{
		GUI.skin.button.wordWrap = true;
		
		GUI.Label(new Rect((int)(Screen.width * 0.3),
							   (int)(Screen.height * 0.25),
							   (int)(0.4f * Screen.width),
							   (int)(0.25f * Screen.height)),
								"Welcome! In order to play the game, please start by filling out the following questionnaire. Everything will be kept confidential. Click one of the buttons to begin!", "button");
		if(GUI.Button(new Rect(
								(int)(Screen.width * 0.3),
							   	(int)(Screen.height * 0.5),
							   	(int)(0.2f * Screen.width),
							   	(int)(Screen.height - (Screen.height * 0.75))), "This is the first time I play this game."))
		{
		
			LogChoice(0);

			Application.LoadLevel(questionnaireSceneName);

		}
		if(GUI.Button(new Rect(
								(int)(Screen.width * 0.5),
							   	(int)(Screen.height * 0.5),
							   	(int)(0.2f * Screen.width),
							   	(int)(Screen.height - (Screen.height * 0.75))), "I am returning to get more."))
		{
			LogChoice(1);
			Application.LoadLevel(questionnaireSceneName);

		}
	}
}
