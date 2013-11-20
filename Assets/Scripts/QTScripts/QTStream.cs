using UnityEngine;
using System.Collections;

// This class handles 
public class QTStream {

	private QTNode[] nodes;
	private long currentProgress = -1;
	private float speed; // Node widths per second
	private long timePassedMillis = 0L;
	private int nodeSize;


	public QTStream(TextAsset input, float speed, int nodeSize)
	{
		// Parse input
		string text = input.text;
		string[] lines = text.Split(new string[] { System.Environment.NewLine }, System.StringSplitOptions.RemoveEmptyEntries);

		nodes = new QTNode[lines.Length];
		for(int i = 0; i < nodes.Length; i++)
		{
			nodes[i] = new QTNode( KeyCodeParser.Parse(lines[i]));
		}

		this.speed = speed;
		this.nodeSize = nodeSize;
	}
	
	// Update is called once per frame
	public void Update () {
		timePassedMillis += (long)(Time.deltaTime * 1000);
	}

	public void Draw(int xCenter, int yCenter)
	{
		float progress = GetCurrentProgress();

		for(int i = 0; i < nodes.Length; i++)
		{
			int x = (int)((i - progress) * nodeSize + (xCenter - (nodeSize / 2)));
			Rect rect = new Rect(x, yCenter - nodeSize/2, nodeSize, nodeSize);
			nodes[i].Draw(rect);
		}
	}

	public KeyCode GetCurrentKeyCode()
	{
		int currentIndex = (int)GetCurrentProgress();

		if(currentIndex >= 0 && currentIndex < nodes.Length)
		{
			return nodes[currentIndex].GetKeyCode();
		}
		else
		{
			return KeyCode.None;
		}
	}

	private float GetCurrentProgress()
	{
		return (float)(timePassedMillis * speed) / 1000.0f;
	}
}
