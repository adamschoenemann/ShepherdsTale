using UnityEngine;
using System.Collections;
using System.Collections.Generic;


/*
 * 	TODO
 *	Make images for WASD keys in the form of arrows
 *	Fix starting-up-you-get-an-error bug
 */

public class QTHandler : MonoBehaviour {

	public int nodeSize = 100;
	public float nodesPerSecond = 1.0f;
	public float inputPrecision = 0.166667f;
	public TextAsset quickTimeEventList;
	public GUIStyle eventStyle;
	public GUIStyle markerFieldStyle;

	public QTAudioManager audio;

	private int xCenter, yCenter;
	private QTStream stream;
	private bool keyPressed = false;
	private int currentIndex = -1;
	private int score = 0;

	private List<QTFeedback> feedback;

	void Start ()
	{
		stream = new QTStream(quickTimeEventList, nodesPerSecond, nodeSize, (int)(nodeSize * inputPrecision));
		xCenter = Screen.width/2;
		yCenter = Screen.height - (nodeSize/2 + 10);
		feedback = new List<QTFeedback>();
	}

	void Update ()
	{
		stream.Update();
		CheckInput();

		for(int i = feedback.Count - 1; i >= 0; i--)
		{
			QTFeedback f = feedback[i];
			f.Update();

			if(f.IsTimeToDisappear())
			{
				feedback.Remove(f);
			}
		}
	}

	void OnGUI()
	{
		// Draw the stream
		stream.Draw(xCenter, yCenter);

		// Draw marker box, indicating which events the user should pay attention to.
		int sizeMod = 3;
		if(System.Math.Abs(stream.GetProgress() - (int)stream.GetProgress()) < 2 * inputPrecision)
		{
			// If user can input now, indicate this by enlarging the marker box.
			sizeMod /= 2;
		}

		GUI.Box(new Rect(Screen.width/2 - nodeSize / 2 - sizeMod,
						 yCenter 		- nodeSize / 2 - sizeMod,
						 nodeSize + 2*sizeMod,
						 nodeSize + 2*sizeMod), score.ToString(), markerFieldStyle);


		foreach(QTFeedback f in feedback)
		{
			f.Draw();
		}
	}

	private void CheckInput()
	{
		float progress = stream.GetProgress();

		if((int)progress > currentIndex) // Have we reached the next event?
		{
			// Did the user miss pressing the required key? (Not counting cases where required key is "None")
			if(!keyPressed && stream.GetKeyCode(currentIndex) != KeyCode.None)
			{
				// Shame on the user!
				MissedButtonPress();
			}

			currentIndex = (int)progress;

			keyPressed = false;
		}
		else if(keyPressed)
		{
			// Did user press a button when none was called for?
			if(Input.anyKeyDown)
			{
				PressedWhenNoButtonNeeded();
			}
			
			return; // Don't go into the code checking for correct input
		}

		// Check whether user is inputting correct key at the right time
		if(Input.GetKeyDown(stream.GetCurrentKeyCode())
			&& (progress - (int)progress) < 2 * inputPrecision)
		{
			keyPressed = true;
			PressedCorrectly();
		}
		else if(Input.anyKeyDown) // Check if user pressed some other key
		{
			keyPressed = true;
			PressedWrongButton();
		}
	}

	private void MissedButtonPress()
	{
		score--;
		Debug.Log("Missed a button press!");
		feedback.Add(new QTFeedback("Missed", 2.0f, Screen.width/2, Screen.height/2, 50, 200));
		audio.PlayFail();
	}

	private void PressedWrongButton()
	{
		score--;
		Debug.Log("Pressed wrong button!");
		feedback.Add(new QTFeedback("Wrong", 2.0f, Screen.width/2, Screen.height/2, 50, 200));
		audio.PlayFail();
	}

	private void PressedWhenNoButtonNeeded()
	{
		score--;
		Debug.Log("Pressed button when none was needed!");
		feedback.Add(new QTFeedback("None needed", 2.0f, Screen.width/2, Screen.height/2, 50, 200));
		audio.PlayFail();
	}

	private void PressedCorrectly()
	{
		score++;
		Debug.Log("P-p-p-perfect!");
	}
}
