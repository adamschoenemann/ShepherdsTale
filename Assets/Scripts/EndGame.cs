using UnityEngine;
using System.Collections;

public class EndGame : MonoBehaviour {

	public float marginAmount = 0.2f;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnGUI()
	{
		if(GUI.Button(new Rect((int)(Screen.width * marginAmount),
							   (int)(Screen.height * marginAmount),
							   (int)(Screen.width - 2 * (Screen.width * marginAmount)),
							   (int)(Screen.height - 2 * (Screen.height * marginAmount))),
								"Congratulations! You beat the game. Click to exit!"))
		{
			Application.Quit(); // Won't work for webapp.
		}
	}
}
