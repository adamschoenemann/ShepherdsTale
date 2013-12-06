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
		// Draw left and right labels:


		// Draw slider and obtain its value
		//Value = (int)GUI.HorizontalSlider(layout.ElementRect(1, 0), Value, 1, 5);
		if (i==0)
		{//GUI.Label(layout.ElementRect(0, 0), left,  "box");
			Value = GUI.Toolbar(layout.ElementRect(1, -1), Value, new string[]{ "No", "Not so much", "So and so", "Almost", "Yes"});
		}
	
		else
		{GUI.Label(layout.ElementRect(0, 0), left,  "box");
			Value = GUI.Toolbar(layout.ElementRect(1, 0), Value, new string[]{ "", "", "", "", ""});}

}
}