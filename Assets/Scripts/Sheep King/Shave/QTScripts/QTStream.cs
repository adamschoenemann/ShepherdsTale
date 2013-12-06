using UnityEngine;
using System.Collections;

/*
 *	This class handles initialization of a QT stream from a TextAsset,
 *	display and movement of nodes, keeping track of which node is 
 *	the current one, as well as offsetting the animation of nodes
 *	along the x-axis by some specified value.
 *
 *	The offset should be used by the parent to ensure that when the current node
 *	is in the middle of the time it can be selected, it is also in the middle
 *	of some visual indication of which node the user should pay attention to.
 *	Author: TW
 */
public class QTStream {

	private QTNode[] nodes;
	private long currentProgress = -1;
	private float speed; // Nodes per second
	private long timePassedMillis = 0L;
	private int nodeSize;
	private int xOffset;

	public QTStream(TextAsset input, QTTextures textures, float speed, int nodeSize, int xOffset)
	{
		// Parse input
		string text = input.text;
		string[] lines = text.Split(new string[] { "\n" /*System.Environment.NewLine*/ }, System.StringSplitOptions.RemoveEmptyEntries);

		nodes = new QTNode[lines.Length];
		for(int i = 0; i < nodes.Length; i++)
		{
			KeyCode k = KeyCodeParser.Parse(lines[i]);

			// If key matches WASD, use custom image rather than standard text.
			switch(k)
			{
				case KeyCode.W:
					nodes[i] = new QTNode(k, textures.upArrow);
					break;
				case KeyCode.A:
					nodes[i] = new QTNode(k, textures.leftArrow);
					break;
				case KeyCode.S:
					nodes[i] = new QTNode(k, textures.downArrow);
					break;
				case KeyCode.D:
					nodes[i] = new QTNode(k, textures.rightArrow);
					break;
				default:
					nodes[i] = new QTNode(k);
					break;
			}
			
		}

		this.speed = speed;
		this.nodeSize = nodeSize;
		this.xOffset = xOffset;
	}
	
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

	// Returns the floating-point index value, e.g. 2.5 if we're halfway past node 2 (0-based)
	public float GetProgress()
	{
		return (float)(timePassedMillis * speed) / 1000.0f;
	}
}
