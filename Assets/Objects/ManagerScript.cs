using UnityEngine;
using System.Collections;

public class ManagerScript : MonoBehaviour {
	
	public int boxesInPlace;
	public GameObject port;

	
	// Use this for initialization
	void Start () {
		boxesInPlace = 0;
	}
	
	// Update is called once per frame
	void Update () {
		//print(boxesInPlace);
		if(boxesInPlace == 8)
		{
			// LOG HERE
			print ("Gratulations!");
			Destroy(port);
			Application.LoadLevel("sheepking_intro");
		}
		
		if(Input.GetKeyDown("q"))
		{
			// LOG HERE
			Application.LoadLevel("loonie_puzzle");
		}
	}

	void OnGUI()
	{
		GUI.Label(new Rect(	Screen.width/3, Screen.height - 50,
							Screen.width/3, 50), "If needed, press Q to restart level.");
	}
}
