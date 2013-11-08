using UnityEngine;
using System.Collections;

// This class displays a progress bar at the given position + two more elements to the right.
// The progress is set directly by using progressBarInstance.progress = value;
public class ProgressBar {

	public float progress = 0.0f;

	private Layout layout;
	private Rect rect;

	public ProgressBar(Rect rect)
	{
		this.rect = rect;
	}

	public void Draw()
	{
		string progressStr = (progress * 100.0f).ToString("0.0") + "%";
		GUI.Label(new Rect(rect.x, rect.y, 3 * rect.width, rect.height), progressStr, "box");

		if(progress > 0)
		{
			GUI.Label(new Rect(rect.x, rect.y, 3 * progress * rect.width, rect.height), "", "box");
		}
	}
}
