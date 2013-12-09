using UnityEngine;
using System.Collections;
using System;

public class PilotCommentsPage : MonoBehaviour {

	public bool Answered { 
		get 
		{
			if(playTime!= "" && comOther != "" && comChoices!="" && comAppearance!= "") return true;
			else return false;
		}
		private set 
		{
			// Deliberately empty
		}
	}

	public string playTime { get; private set;}
	public string comAppearance { get; private set;}
	public string comChoices { get; private set;}
	public string comOther { get; private set;}
	
	private Layout layout;
	
	public PilotCommentsPage(Layout layout)
	{
		this.layout = layout;
		Answered = false;
		playTime="";
		comAppearance="";
		comChoices="";
		comOther="";
	}
	
	public void Draw()
	{
		// playTime
		GUI.Label(layout.ElementRectRange(-0.5f, 1f, 0f, 1.5f), "How long do you think it took you to finish the game? Please enter the answer in minutes",  "box");
		playTime = GUI.TextField(layout.ElementRectRange(1, 3, 0f, 1.5f), playTime);
		int noMin;
		if(!Int32.TryParse(playTime, out noMin) || (noMin > 99))
		{
			playTime = "";
		}
		
		// comAppearance
		GUI.Label(layout.ElementRectRange(-0.5f, 1f, 1.5f, 3f), "What do you think about the general visual appearance of the game ?",  "box");
		comAppearance = GUI.TextField(layout.ElementRectRange(1, 3, 1.5f, 3f), comAppearance);
		int vis;
		if(Int32.TryParse(comAppearance, out vis))
		{
			comAppearance = "";
		}

		// comChoices
		GUI.Label(layout.ElementRectRange(-0.5f, 1f, 3f, 4.5f), "Did the choices in the event coincide with their descriptions? Please elaborate for each of the choices.",  "box");
		comChoices = GUI.TextField(layout.ElementRectRange(1, 3, 3f, 4.5f), comChoices);
		int cho;
		if(Int32.TryParse(comChoices, out cho))
		{
			comChoices = "";
		}
		// comOther
		GUI.Label(layout.ElementRectRange(-0.5f, 1f, 4.5f, 6f), "Any other comments are welcomed. Any kind of feedback, really.",  "box");
		comOther = GUI.TextField(layout.ElementRectRange(1, 3, 4.5f, 6f), comOther);
		int gen;
		if(Int32.TryParse(comOther, out gen))
		{
			comOther= "";
		}
	}

}
