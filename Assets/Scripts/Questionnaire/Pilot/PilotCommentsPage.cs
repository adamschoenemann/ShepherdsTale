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
		GUI.Label(layout.ElementRect(0,1), "How long do you think it took you to finish the game? Please enter the answer in minutes",  "box");
		playTime = GUI.TextField(layout.ElementRect(1,1), playTime);
		int noMin;
		if(!Int32.TryParse(playTime, out noMin) || (noMin > 99))
		{
			playTime = "";
		}
		
		// comAppearance
		GUI.Label(layout.ElementRect(0,2), "What do you think about the general visual appearance of the game ?",  "box");
		comAppearance = GUI.TextField(layout.ElementRect(1,2), comAppearance);
		int vis;
		if(Int32.TryParse(comAppearance, out vis))
		{
			comAppearance = "";
		}

		// comChoices
		GUI.Label(layout.ElementRect(0,3), "Did the choices in the event coincide with their descriptions? Please elaborate for each of the choices.",  "box");
		comChoices = GUI.TextField(layout.ElementRect(1,3), comChoices);
		int cho;
		if(Int32.TryParse(comChoices, out cho))
		{
			comChoices = "";
		}
		// comOther
		GUI.Label(layout.ElementRect(0,4), "Any other comments are welcomed. Any kind of feedback, really.",  "box");
		comOther = GUI.TextField(layout.ElementRect(1,4), comOther);
		int gen;
		if(Int32.TryParse(comOther, out gen))
		{
			comOther= "";
		}
	}

}
