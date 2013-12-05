using UnityEngine;
using System.Collections;

public class SceneManager : MonoBehaviour {

	Timer timer;

	// Use this for initialization
	void Start () {
		timer = new Timer(23000);
	}
	
	// Update is called once per frame
	void Update () {
		timer.TickSeconds (Time.deltaTime);

		if(timer.IsDone ())
		{
			print ("CHANGE SCENE");
		}
	}
}
