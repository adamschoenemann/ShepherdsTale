using UnityEngine;
using System.Collections;
using System.Collections.Generic;


/*
 *	This class controls all things related to the QT events: It ensures 
 *	that a stream is set up from the given TextAsset, that the stream is
 *	moved with proper timing, handles user input, and gives auditory (and 
 *	optionally visual) feedback.
 *	
 *	author: TW
 */
public class QTHandler : MonoBehaviour {

	public int nodeSize = 100; 
	public float nodesPerSecond = 1.0f;
	public float inputPrecision = 0.166667f; // User is allowed to be off by 1/6th to either side
	
	public TextAsset quickTimeEventList;
	public QTAudioManager audio;
	public QTTextures textures;

	private QTStream stream;
	//private List<QTFeedback> feedback;
	private int xCenter, yCenter;
	private bool keyPressed = false;
	private int currentIndex = -1;
	private int score = 0; // Not currently used. Counts up when user hits proper key at proper time, down otherwise.
	private Animator playerAnim;

	private bool hasError = false, hasCorrect = false;

	void Start ()
	{
		stream = new QTStream(quickTimeEventList, textures, nodesPerSecond, nodeSize, (int)(nodeSize * inputPrecision)/2);
		xCenter = Screen.width/2;
		yCenter = Screen.height - (nodeSize/2 + 10);
		//feedback = new List<QTFeedback>();

		playerAnim = GameObject.FindGameObjectWithTag(Tags.player).GetComponent<Animator>();
	}

	void Update ()
	{
		stream.Update();
		CheckInput();
		
		// Uncomment the following if you require visual feedback labels. Also uncomment similar lines
		// further down.
		/*
		for(int i = feedback.Count - 1; i >= 0; i--)
		{
			QTFeedback f = feedback[i];
			f.Update();

			if(f.IsTimeToDisappear())
			{
				feedback.Remove(f);
			}
		}
		*/
	}

	void OnGUI()
	{
		stream.Draw(xCenter, yCenter);

		// Draw marker, indicating which event the user should time their button push to.
		GUI.Label(new Rect(Screen.width/2 - nodeSize / 2,
						 yCenter 		- nodeSize / 2,
						 nodeSize,
						 nodeSize), textures.marker);

		// Uncomment the following if you require visual feedback labels. Also uncomment similar lines
		// further down.
		/*
		foreach(QTFeedback f in feedback)
		{
			f.Draw();
		}
		*/
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


	// ---- Reactions to user input

	// Missed press turned off as an error, as the way of determining success will not be 
	// using this. Also, the feedback is confusing as fuck. -TW
	private void MissedButtonPress()
	{
		//score--;
		//MadeError();

		//Debug.Log("Missed a button press!");
		//feedback.Add(new QTFeedback("Missed", 2.0f, Screen.width/2, Screen.height/2, 50, 200)); // Uncomment these to get (crappy) visual feedback on errors. -TW
		//audio.PlayFail(); // Removed audio here because it can be very misleading to get delayed feedback. -TW
	}

	private void PressedWrongButton()
	{
		MadeError();
		//Debug.Log("Pressed wrong button!");
		//feedback.Add(new QTFeedback("Wrong", 2.0f, Screen.width/2, Screen.height/2, 50, 200));
	}

	private void PressedWhenNoButtonNeeded()
	{
		MadeError();
		//Debug.Log("Pressed button when none was needed!");
		//feedback.Add(new QTFeedback("None needed", 2.0f, Screen.width/2, Screen.height/2, 50, 200));
	}

	private void PressedCorrectly()
	{	
		MadeCut();	
	}

	private void MadeError()
	{
		audio.PlayFail();
		score--;

		hasError = true;
		hasCorrect = false;
	}

	private void MadeCut()
	{
		audio.PlayCorrect();
		score++;

		hasCorrect = true;
		hasError = false;
	}

	public bool HasMadeError()
	{
		bool output = hasError;
		hasError = false;
		return output;
	}

	public bool HasMadeCorrect()
	{
		bool output = hasCorrect;
		hasCorrect = false;
		return output;
	}
}
