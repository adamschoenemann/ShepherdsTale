using UnityEngine;
using System.Collections;

public class Collectible : MonoBehaviour {

	public Texture Image1;
	public Texture Black;
	public Texture Papyrus;
	public GUISkin skin;

	private float posX 	= Screen.width*0.1f;
	private float posY 	= Screen.height*0.1f;
	private float sizeX	= Screen.width*0.8f;
	private float sizeY	= Screen.height*0.8f;

	string[] story = 
	{		"FACT I   (1/3) \n Egyptians believed that sheep were sacred. They even had them mummified when they died, just like humans.", 
			"FACT II  (2/3) \n Sheep are known to self-medicate when they have some illnesses. They will eat specific plants when ill that can cure them.", 
			"FACT III (3/3) \n Sheeps can remember faces, may think of faces even if they don't see them"
	};


	private bool showGUI;

	public enum Episode {Wolf = 0, Loonie = 1, SheepKing = 2};
	public Episode epi = Episode.Wolf;

	public Component[] lightSources;
	
	// Use this for initialization
	void Start () {
	
	}

	// Update is called once per frame
	void Update () {

	}

	void OnTriggerEnter (Collider other)
	{
		if(other.gameObject.tag == "Player")
		{
			print ("You found a collectible!");
			showGUI = true;


			Renderer[] arrend = GetComponentsInChildren<Renderer>();
			for (int i = 0; i < arrend.Length; i++)
				arrend[i].enabled = false;

			lightSources = GetComponentsInChildren<Light>();
			foreach(Light lights in lightSources)
			{
				lights.enabled = false;
			}

		}
	}

	void OnTriggerExit (Collider other)
	{
		if(other.gameObject.tag == "Player")
		{
			Destroy(gameObject);
		}
	}

	void OnGUI() {

		GUI.skin = this.skin;

		// NOTES FOR GUI:
		// The size of the image (e.g. image.width) is equal to the size you set it.

		if(showGUI)
		{
			Screen.showCursor = true;
			// BACKGROUND
			GUI.color = new Color(1,1,1,0.5f);
			GUI.DrawTexture(new Rect(0, 0, Screen.width, Screen.height), Black);

			// PAPYRUS
			GUI.color = new Color(1,1,1,1);
			GUI.DrawTexture(new Rect(posX, posY, sizeX, sizeY), Papyrus);

			// FUN FACT
			GUI.color = new Color(0,0,0,1);
			GUI.Label(new Rect(posX+(sizeX/2)-(sizeX-200)/2,posY+(sizeY/4)-50,sizeX-200,100),story[(int)epi]);

			// SHEEP IMAGE
			if (!Image1) {
				Debug.LogError("Assign a Texture in the inspector.");
				return;
			}
			GUI.color = new Color(1,1,1,1f);
			GUI.DrawTexture(new Rect(posX+(sizeX/2)-(sizeX*0.2f), posY+(sizeY*0.4f), sizeX*0.4f, sizeY*0.4f), Image1);

			// EXIT BUTTON
			GUI.color = new Color(1,0,1,1);
			if (GUI.Button(new Rect(posX+(sizeX/2)-100,Screen.height-200, 200, 50), "<color=#ffa500ff> Click to \n<color=#ffffff> EXIT </color> or press <color=#ffffff>ESCAPE</color> </color>") || Input.GetButtonDown("Escape"))
			{
				//print("You clicked the button!");
				showGUI = false;
			}

			Time.timeScale = 0.0f;
		}
		else
		{
			Time.timeScale = 1.0f;
		}
		
	}
}
