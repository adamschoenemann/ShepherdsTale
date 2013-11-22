using UnityEngine;
using System.Collections;

/*
 *	Provides a label that will go from startSize to endSize over the specified lifetime,
 *	then mark itself for destruction (IsTimeToDisappear) by parent object.
 *	Author: TW
 */
public class QTFeedback {

	private string message;
	private int lifetime, elapsedTime; // ms
	private int xCenter, yCenter, startSize, endSize; // pixels
	private bool timeToDisappear = false;


	public QTFeedback(string message, float lifetime, int xCenter, int yCenter, int startSize, int endSize)
	{
		this.message = message;
		this.lifetime = (int)(lifetime * 1000.0f); // from s to ms
		this.xCenter = xCenter;
		this.yCenter = yCenter;
		this.startSize = startSize;
		this.endSize = endSize;
		elapsedTime = 0;
	}

	public void Update()
	{
		elapsedTime += (int)(Time.deltaTime * 1000.0f);

		if(elapsedTime > lifetime)
		{
			timeToDisappear = true;
		}
	}

	public void Draw()
	{
		int size = Lerp(startSize, endSize, (float)(elapsedTime)/(float)(lifetime));
		GUI.Box(new Rect(xCenter - size/2, yCenter - size/4, size, size/2), message);
	}

	public bool IsTimeToDisappear()
	{
		return timeToDisappear;
	}

	private int Lerp(int lower, int higher, float alpha)
	{
		return (int)((1 - alpha) * lower + alpha * higher);
	}

}
