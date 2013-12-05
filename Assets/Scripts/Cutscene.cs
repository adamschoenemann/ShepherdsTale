using UnityEngine;
using System.Collections;

public class Cutscene : MonoBehaviour {

	public MovieTexture movie;
	public AudioSource audio;
	public string nextSceneName;
	public bool debug = false;

	private Timer goToNextLevel;

	// Use this for initialization
	void Start () 
	{
		if(movie != null)
		{
			movie.Play();
			audio.Play();
			goToNextLevel = new Timer(movie.duration);
		}
		else
		{
			goToNextLevel = new Timer(4.0f);
		}
	}
	
	// Update is called once per frame
	void Update () 
	{
		goToNextLevel.TickSeconds(Time.deltaTime);

		if(goToNextLevel.IsDone())
		{
			Application.LoadLevel(nextSceneName);
		}
	}

	void OnGUI()
	{
		if(debug)
		{
			if(GUI.Button(new Rect(50, 50, 200, 50), "Skip"))
			{
				Application.LoadLevel(nextSceneName);
			}
		}
	}
}
