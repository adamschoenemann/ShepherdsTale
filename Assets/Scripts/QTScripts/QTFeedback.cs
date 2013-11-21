using UnityEngine;
using System.Collections;

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

	public QTFeedback(string message, float lifetime, int xCenter, int yCenter, int startSize, int endSize, AudioSource sound) :
		this(message, lifetime, xCenter, yCenter, startSize, endSize)
	{
		sound.Play();
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
