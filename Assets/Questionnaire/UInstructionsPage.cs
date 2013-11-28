using UnityEngine;
using System.Collections;

// This class is used for displaying an instructions page to help users understand their task.
public class UInstructionsPage {

	private Layout layout;

	public UInstructionsPage(Layout layout)
	{
		this.layout = layout;
	}
	
	public void Draw()
	{
		GUI.Label(new Rect(layout.startX, layout.startY, 3 * layout.elementWidth, 3 * layout.elementHeight),
			"In the following pages, you are asked to comment on a few aspects and to rate a few affirmations about the game you just played. "+			
		          "\n \t We thank you very much for your patience and cooperation! ",
			"box");
	}
}
