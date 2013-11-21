using UnityEngine;
using System.Collections;

/*
 * 	TODO 
 *	Make images for WASD keys in the form of arrows
 */

public class QTHandler : MonoBehaviour {

	public int nodeSize = 100;
	public float nodesPerSecond = 1.0f;
	public float inputPrecision = 0.166667f;
	public TextAsset quickTimeEventList;
	public GUIStyle eventStyle;
	public GUIStyle markerFieldStyle;

	private int xCenter, yCenter;
	private QTStream stream;
	private bool keyPressed = false;
	private int currentIndex = -1;
	private int score = 0;

	void Start () 
	{
		stream = new QTStream(quickTimeEventList, nodesPerSecond, nodeSize);
		xCenter = Screen.width/2 + (int)(nodeSize * inputPrecision); // Offset so that fields appear in the centre when they are in the middle of their selectability.
		yCenter = Screen.height - (nodeSize/2 + 10);
	}

	void Update () 
	{
		stream.Update();

		float progress = stream.GetProgress();


		if((int)progress > currentIndex)
		{
			currentIndex = (int)progress;
			keyPressed = false;
		}
		else if(keyPressed)
		{
			// Did user press a button when none was called for?
			if(Input.anyKeyDown)
			{
				Debug.Log("You suck.");
				score--;
			}
			
			return; // Key has already been pressed
		}

		// Check whether user is inputting correct key at the right time
		if(Input.GetKeyDown(stream.GetCurrentKeyCode()) && (progress - (int)progress) < 2 * inputPrecision)
		{
			Debug.Log("You pressed " + stream.GetCurrentKeyCode() + " just right!");
			keyPressed = true;
			score++;
		}
		else if(Input.anyKeyDown) // Check if user pressed some other key, or pressed any key at the wrong time
		{
			Debug.Log("You fail!");
			keyPressed = true;
			score--;
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
			sizeMod *= 2;
		}

		GUI.Box(new Rect(Screen.width/2 - nodeSize / 2 - sizeMod, 
						 yCenter 		- nodeSize / 2 - sizeMod, 
						 nodeSize + 2*sizeMod, 
						 nodeSize + 2*sizeMod), score.ToString(), markerFieldStyle);
	}
}
