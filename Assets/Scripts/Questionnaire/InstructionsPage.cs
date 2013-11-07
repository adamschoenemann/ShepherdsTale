using UnityEngine;
using System.Collections;

// This class is used for displaying an instructions page to help users understand their task.
public class InstructionsPage {

	private Layout layout;

	public InstructionsPage(Layout layout)
	{
		this.layout = layout;
	}
	
	public void Draw()
	{
		GUI.Label(new Rect(layout.startX, layout.startY, 3 * layout.elementWidth, 3 * layout.elementHeight),
			"In the following pages, you are asked to indicate which of the two opposed statements you agree with the most. This is done by clicking the boxes. You can see your progress on the bottom of the page.",
			"box");
	}
}
