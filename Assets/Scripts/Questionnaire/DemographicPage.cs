using UnityEngine;
using System.Collections;
using System;

// This class makes up a page used for demographics questions. 
// This is somewhat fragile code, in that the number of demographic questions
// will have to be changed a few places in the Questionnaire class if any change to the number of
// questions is made here.
public class DemographicPage
{
	public bool Answered { 
		get 
		{
			if(Gender != "" && Age != "" && Nationality != "") return true;
			else return false;
		}
		private set 
		{
			// Deliberately empty
		}
	}
	
	public string ID  { get; private set;} // ID for personality verification
	public string Gender { get; private set;}
	public string Age { get; private set;}
	public string Nationality { get; private set;}

	private bool male = false, female = false;

	private Layout layout;

	public DemographicPage(Layout layout)
	{
		this.layout = layout;
		Answered = false;
		ID = "";
		Gender = "";
		Age = "";
		Nationality = "";
	}

	public void Draw()
	{
		// Headline
		GUI.Label(layout.ElementRect(1,0), Application.loadedLevelName, "box");
		
		// ID
		GUI.Label(layout.ElementRect(0,1), "ID",  "box");
		ID = GUI.TextField(layout.ElementRect(1,1), ID);
		
		// Gender
	 	GUI.Label(layout.ElementRect(0,2), "Gender",  "box");
	 	if(GUI.Toggle(layout.ElementRect(1,2), male, "Male"))
		{	
			male = true;
			female = false;
			Gender = "male";
		}
		if(female = GUI.Toggle(layout.ElementRect(2,2), female, "Female"))
		{
			male = false;
			female = true;
			Gender = "female";
		}

		// Age
		GUI.Label(layout.ElementRect(0,3), "Age",  "box");
		Age = GUI.TextField(layout.ElementRect(1,3), Age);
		

		// Nationality
		GUI.Label(layout.ElementRect(0,4), "Nationality",  "box");
		Nationality = GUI.TextField(layout.ElementRect(1,4), Nationality);
		int nat;
		if(Int32.TryParse(Nationality, out nat))
		{
			Nationality = "";
		}
	}

}
