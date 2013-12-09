using UnityEngine;
using System.Collections;

public class PilotRow
{
	public int Value { get; private set;}

	private Layout layout; 
	private string left;

	public PilotRow(string left, Layout layout)
	{
		this.left = left;
		this.layout = layout;
		Value = -1; // Initial value is -1 for no selection
	}

	public void Draw(int i)
	{
		// Draw slider and obtain its value
		GUI.Label(layout.ElementRectRange(-0.5f, 1f, 0f, 1.2f), left,  "box");
		Value = GUI.Toolbar(layout.ElementRectRange(1f, 3f, 0f, 1f), Value, new string[]{ "", "", "", "", ""});
	}
}