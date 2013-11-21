using UnityEngine;
using System.Collections;

/*
 * 	TODO 
 *	Make a time window where the user may hit the correct button - current implementation sux
 *	Make images for arrow keys / Decide what keys should be used		W, A, S, D
 *	React to user input
 */

public class QTHandler : MonoBehaviour {

	public int nodeSize = 100;
	public float nodesPerSecond = 1.0f;
	public float inputPrecision = 0.166667f;
	public TextAsset qteList;
	public GUIStyle eventStyle;
	public GUIStyle markerFieldStyle;

	private int xCenter, yCenter;
	private QTStream stream;

	void Start () 
	{
		stream = new QTStream(qteList, nodesPerSecond, nodeSize);
		xCenter = Screen.width/2;
		yCenter = Screen.height - (nodeSize/2 + 10);
	}
	
	void Update () 
	{
		stream.Update();

		float progress = stream.GetProgress();
		progress -= (int)progress;
		int index = (int)progress;


		if(Input.GetKeyDown(stream.GetCurrentKeyCode()) && progress < 2 * inputPrecision)
		{
			// Users input is correct
			Debug.Log("You pressed " + stream.GetCurrentKeyCode() + " just right!");
		}
		else if(Input.anyKey)
		{
			Debug.Log("You fail!");
		}
	}

	void OnGUI()
	{
		// Draw the stream
		stream.Draw(xCenter + (int)(nodeSize * inputPrecision), yCenter);

		// Draw marker box, indicating which events the user should pay attention to.
		int sizeMod = 3;
		if(System.Math.Abs(stream.GetProgress() - (int)stream.GetProgress()) < 2 * inputPrecision)
		{
			// If user can input now, indicate this by enlarging the marker box.
			sizeMod *= 2;
		}

		GUI.Box(new Rect(xCenter - nodeSize / 2 - sizeMod, yCenter - nodeSize / 2 - sizeMod, nodeSize + 2*sizeMod, nodeSize + 2*sizeMod), "", markerFieldStyle);
	}
}
