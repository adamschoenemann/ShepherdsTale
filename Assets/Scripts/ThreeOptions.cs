using UnityEngine;
using System.Collections;

public class ThreeOptions : MonoBehaviour {
	
	public Texture killImage;
	public Texture lureImage;
	public Texture sneakImage;
	public GUISkin skin;
	
	private string[] killText 	= {"Use the staff ", "<color=#ffa500ff>(left mouse button)</color> ", "to kill the wolves."};
	private string[] lureText 	= {"Make sheep sounds ", "<color=#ffa500ff>(use 'Q' to make the sounds)</color> ", "to lure the wolves into the cage."};
	private string[] sneakText 	= {"Find a path through the wolfpack by sneaking", "<color=#ffa500ff>(use 'Left Shift' to sneak)</color>" ,"."};
	
	Color redFont;
		
	// Use this for initialization
	void Start () 
	{ 
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	void OnGUI()
	{
		//GUI.contentColor = Color.yellow;
		
		GUI.skin = this.skin;
		
		//Lure information
		
		GUI.Label(new Rect(Screen.width/8,50,(Screen.width/3-20),100),"LURE");
		GUI.Label(new Rect(10,(Screen.height/8)+(Screen.height/2)+10,(Screen.width/3-20),100),lureText[0]+lureText[1]+lureText[2],"box");

		if(GUI.Button(new Rect(10,							Screen.height/8,(Screen.width/3-20),Screen.height/2), lureImage))
			Application.LoadLevel("lure");
		
		//Sneak information
		GUI.Label(new Rect((Screen.width/2)+10,50,(Screen.width/3-20),100),"SNEAK");
		GUI.Label(new Rect(20+((Screen.width/3)-20),(Screen.height/8)+(Screen.height/2)+10,(Screen.width/3-20),100),sneakText[0]+sneakText[1]+sneakText[2],"box");

		if(GUI.Button(new Rect(20+((Screen.width/3)-20),	Screen.height/8,(Screen.width/3-20),Screen.height/2), sneakImage))
			Application.LoadLevel("sneak");
		
		//Kill information
		GUI.Label(new Rect((Screen.width/1.3f)+10,50,(Screen.width/3-20),100),"KILL");
		GUI.Label(new Rect(10+(2*(Screen.width/3)-20),(Screen.height/8)+(Screen.height/2)+10,(Screen.width/3-20),100),killText[0] + killText[1] + killText[2],"box");

		if(GUI.Button(new Rect(10+(2*(Screen.width/3)-20),	Screen.height/8,(Screen.width/3-20),Screen.height/2), killImage))
			Application.LoadLevel("kill");
		
		
	}
}
