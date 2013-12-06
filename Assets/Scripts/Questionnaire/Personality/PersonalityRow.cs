using UnityEngine;
using System.Collections;

public class PersonalityRow
{
	public int Value { get; private set;}

	private Layout layout; 
	private string left, right;

	public PersonalityRow(string left, string right, Layout layout)
	{
		this.left = left;
		this.right = right;
		this.layout = layout;
		Value = -1; // Initial value is -1 for no selection
	}

	public void Draw()
	{
		// Draw left and right labels:
		GUI.Label(layout.ElementRect(0, 0), left,  "box");
		GUI.Label(layout.ElementRect(2, 0), right, "box");

		// Draw slider and obtain its value
		//Value = (int)GUI.HorizontalSlider(layout.ElementRect(1, 0), Value, 1, 5);
		Value = GUI.Toolbar(layout.ElementRect(1, 0), Value, new string[]{ "", "", "", "", "",""});
	}
}
