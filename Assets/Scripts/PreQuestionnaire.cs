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
		GUI.skin.box.wordWrap = true;
		GUI.skin.label.wordWrap = true;
		
		GUI.Label(new Rect((int)(Screen.width * 0.2),
							   (int)(Screen.height * 0.2),
							   (int)(0.6f * Screen.width),
							   (int)(0.35f * Screen.height)),
								"Welcome! In order to play the game, please start by filling out the following questionnaire.\n"
							+	"You should note that the questionnaire and game as well as all data collected from them are part "
							+	"of an academic experiment at Aalborg University Copenhagen. More specifically, it is the group "
							+	"MED502 (2013) who is behind this project. By playing this game, you allow said group to collect "
							+	"questionnaire and game data from your session, and to use it for academic purposes only. "
							+	"The data is anonymized. We hope you enjoy the game!\n\n"
							+ 	"Click one of the buttons to begin!", "box");
		if(GUI.Button(new Rect(
								(int)(Screen.width * 0.25),
							   	(int)(Screen.height * 0.6),
							   	(int)(0.2f * Screen.width),
							   	(int)(0.2f * Screen.height)), "This is the first time I play this game."))
		{
			LogChoice(0);
			Application.LoadLevel(questionnaireSceneName);
		}
		if(GUI.Button(new Rect(
								(int)(Screen.width * 0.55f),
							   	(int)(Screen.height * 0.6),
							   	(int)(0.2f * Screen.width),
							   	(int)(0.2f * Screen.height)), "I am returning to get more."))
		{
			LogChoice(1);
			Application.LoadLevel(questionnaireSceneName);

		}
	}
}
