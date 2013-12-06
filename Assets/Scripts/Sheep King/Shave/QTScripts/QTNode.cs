using UnityEngine;
using System.Collections;

/*
 * 	This class handles displaying a single QuickTime node, representing a specific key.
 *	If a texture is provided, it will only show that without the key text.
 *	Author: TW
 */
public class QTNode {

	private KeyCode key;
	private Texture tex = null;

	public QTNode(KeyCode key)
	{
		this.key = key;
	}

	public QTNode(KeyCode key, Texture tex) :
		this(key)
	{
		this.tex = tex;
	}

	public void Draw(Rect rect)
	{
		if(tex != null)
		{
			GUI.Label(rect, tex);
		}
		else if(key != KeyCode.None)
		{
			GUI.Label(rect, key.ToString(), "box");
		}
			
	}

	public KeyCode GetKeyCode()
	{
		return key;
	}
}
