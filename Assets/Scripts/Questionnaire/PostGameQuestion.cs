using UnityEngine;
using System.Collections;

public class PostGameQuestion : Loggable 
{

	private string message = "Thank you for playing the game and participating in our project!\n"
							+ "If you would like to give some feedback on anything, please write "
							+ "it here and click the 'Send' button! We'd very much like to hear "
							+ "from you.\nBest regards, Group 502 at Medialogy in AAUCPH 2013";
	private string userInput = "";
	private string sentMessage = "Thank you very much! You can now safely return to real life.";

	private bool sent = false;

	void Start()
	{
		Screen.showCursor = true;
		Screen.lockCursor = false;
		CursorLocker.shouldCursorLock = false;
	}

	void OnGUI()
	{
		Screen.showCursor = true;

		GUI.skin.button.wordWrap = true;
		GUI.skin.box.wordWrap = true;
		GUI.skin.label.wordWrap = true;
		GUI.skin.textArea.wordWrap = true;

		int x = Screen.width / 4;
		int width = Screen.width / 2;

		if(!sent)
		{
			int messageY = Screen.height / 8;
			int messageHeight = 2 * Screen.height / 8;
			int inputY = 3 * Screen.height / 8;
			int inputHeight = 3 * Screen.height / 8;
			int sendY = 6 * Screen.height / 8;
			int sendHeight = Screen.height / 8;

			GUI.Label(new Rect(x, messageY, width, messageHeight), message, "box");
			userInput = GUI.TextArea(new Rect(x, inputY, width, inputHeight), userInput);
			if(GUI.Button(new Rect(x, sendY, width, sendHeight), "Send"))
			{
				Send();
			}
		}
		else
		{
			GUI.Label(new Rect(x, Screen.height / 8, width, 6 * Screen.height / 8), sentMessage, "box");
		}
	}

	private void Send()
	{
		sent = true;
		// Send message
		LogEntry entry = new LogEntry(this, "PostGameFeedback")
				.AddString("Feedback", userInput);
			EnqueueEntry(entry);
		Logger.instance.Flush();
	}

	// Logging API ;)
	public override bool ShouldLogRoutinely()
	{
		return false;
	}

	protected override void BeforeEnqueueEntry(LogEntry entry)
	{
		
	}
}
