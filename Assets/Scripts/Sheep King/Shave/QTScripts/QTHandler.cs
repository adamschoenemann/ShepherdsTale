using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

/**
 * EventArgs for button press input
 * @type {[type]}
 */
public class ButtonPressEventArgs : EventArgs
{
  public readonly KeyCode keyCode;
  public readonly float progress;
  public ButtonPressEventArgs(KeyCode kc, float p)
  {
    keyCode = kc;
    progress = p;
  }
}

/*
 *	This class controls all things related to the QT events: It ensures 
 *	that a stream is set up from the given TextAsset, that the stream is
 *	moved with proper timing, and also takes care of user input.
 *	
 *	author: TW
 */
public class QTHandler : MonoBehaviour {

	public int nodeSize = 100; 
	public float nodesPerSecond = 1.0f;
	public float inputPrecision = 0.166667f; // User is allowed to be off by 1/6th to either side
	public float errorMarkerTime = 0.25f;
	
	public TextAsset quickTimeEventList;
	public QTTextures textures;

	private QTStream stream;
	private int xCenter, yCenter;
	private bool keyPressed = false;
	private int currentIndex = -1;
	private float errorMarkerTimeElapsed = 0.0f;

	private bool hasError = false, hasCorrect = false;

	// Events (Adam)
  public event EventHandler<ButtonPressEventArgs> onMissedButtonPress;
  public event EventHandler<ButtonPressEventArgs> onPressedWrongButton;
  public event EventHandler<ButtonPressEventArgs> onPressedWhenNoButtonNeeded;
  public event EventHandler<ButtonPressEventArgs> onPressedCorrectly;

	void Start ()
	{
		stream = new QTStream(quickTimeEventList, textures, nodesPerSecond, nodeSize, (int)(nodeSize * inputPrecision)/2);
		xCenter = Screen.width/2;
		yCenter = Screen.height - (nodeSize/2 + 10);
	}

	void Update ()
	{
		errorMarkerTimeElapsed += Time.deltaTime;
		stream.Update();
		CheckInput();
	}

	void OnGUI()
	{
		stream.Draw(xCenter, yCenter);

		Texture marker = (errorMarkerTimeElapsed < errorMarkerTime) ? textures.errorMarker : textures.marker;

		// Draw marker, indicating which event the user should time their button push to.
		GUI.Label(new Rect(Screen.width/2 - nodeSize / 2,
						 yCenter 		- nodeSize / 2,
						 nodeSize,
						 nodeSize), marker);
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
    //MadeError();
    if(onMissedButtonPress != null)
    {
    	onMissedButtonPress(
    		this,
    		new ButtonPressEventArgs(
    			stream.GetKeyCode(currentIndex), 
    			stream.GetProgress()
    			)
    		);
    }
  }

  private void PressedWrongButton()
  {
  	if(onPressedWrongButton != null)
  	{
  		onPressedWrongButton(
  			this,
  			new ButtonPressEventArgs(
  				stream.GetKeyCode(currentIndex), 
  				stream.GetProgress()
  				)
  			);
  	}
  	MadeError();
  }

  private void PressedWhenNoButtonNeeded()
  {
  	if(onPressedWhenNoButtonNeeded != null)
  	{
  		onPressedWhenNoButtonNeeded(
  			this,
  			new ButtonPressEventArgs(
  				stream.GetKeyCode(currentIndex), 
  				stream.GetProgress()
  				)
  			);
  	}
  	MadeError();
  }

  private void PressedCorrectly()
  {        
  	if(onPressedCorrectly != null)
  	{
  		onPressedCorrectly(
  			this,
  			new ButtonPressEventArgs(
  				stream.GetKeyCode(currentIndex), 
  				stream.GetProgress()
  				)
  			);
  	}
  	MadeCorrect();        
  }

	private void MadeError()
	{
		hasError = true;
		hasCorrect = false;
		errorMarkerTimeElapsed = 0.0f;
	}

	private void MadeCorrect()
	{
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
