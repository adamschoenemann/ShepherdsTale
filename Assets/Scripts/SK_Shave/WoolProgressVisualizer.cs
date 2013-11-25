using UnityEngine;
using System.Collections;

public class WoolProgressVisualizer : MonoBehaviour {

	private float progress;
	private int x, width, y, height, startY, totalHeight;
	private Rect rect;

	void Start()
	{
		startY = (int)(Screen.height * 0.2f);
		totalHeight = (int)(Screen.height * 0.6f);
		x = (int)(Screen.width * 0.75f);
		width = (int)(Screen.width * 0.1f);
		SetProgress(0.0f);
	}
	
	void OnGUI () 
	{
		// TODO improve visualization!
		GUI.Box(rect, progress.ToString());
	}

	public void SetProgress(float progress)
	{
		this.progress = 1.0f - progress; // Use the inverse progress.
		y = (int)(progress * totalHeight + startY);
		height = (int)(this.progress * totalHeight);

		rect = new Rect(x, y, width, height);
	}
}
