using UnityEngine;
using System.Collections;

// This class handles 
public class QTStream {

	private QTNode[] nodes;
	private long currentProgress = -1;
	private float speed; // Node widths per second
	private long timePassedMillis = 0L;
	private int nodeSize;
	private int xOffset;


	public QTStream(TextAsset input, float speed, int nodeSize, int xOffset)
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
		this.xOffset = xOffset;
	}
	
	// Update is called once per frame
	public void Update () {
		timePassedMillis += (long)(Time.deltaTime * 1000);
	}

	public void Draw(int xCenter, int yCenter)
	{
		float progress = GetProgress();

		Color col = GUI.color;

		for(int i = 0; i < nodes.Length; i++)
		{
			int x = (int)((i - progress) * nodeSize + (xCenter - (nodeSize / 2))) + xOffset;
			float alpha = System.Math.Max( 1.0f  - (System.Math.Abs(xCenter  - nodeSize/2 - x))/ (float)(3*nodeSize), 0.0f); // More alpha when in centre, less otherwise

			col.a = alpha;
			GUI.color = col;

			Rect rect = new Rect(x + xOffset, yCenter - nodeSize/2, nodeSize, nodeSize);
			nodes[i].Draw(rect);
		}

		col.a = 1.0f;
		GUI.color = col;
	}

	public KeyCode GetCurrentKeyCode()
	{
		int currentIndex = (int)GetProgress();
		return GetKeyCode(currentIndex);
	}

	public KeyCode GetKeyCode(int index)
	{
		if(index >= 0 && index < nodes.Length)
		{
			return nodes[index].GetKeyCode();
		}
		else
		{
			return KeyCode.None;
		}
	}

	public float GetProgress()
	{
		return (float)(timePassedMillis * speed) / 1000.0f;
	}
}
