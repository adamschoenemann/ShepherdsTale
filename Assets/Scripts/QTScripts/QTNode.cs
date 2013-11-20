using UnityEngine;
using System.Collections;

/*
 * This class handles displaying a single QuickTime node.
 */
public class QTNode {

	private KeyCode key;

	public QTNode(KeyCode key)
	{
		this.key = key;
	}

	public void Draw(Rect rect)
	{
		if(key != KeyCode.None)
			GUI.Label(rect, key.ToString(), "box");
	}

	public KeyCode GetKeyCode()
	{
		return key;
	}
}
