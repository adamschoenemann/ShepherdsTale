using UnityEngine;
using System.Collections;

public class FinishScene : MonoBehaviour {

	public MovieTexture movie;
	public AudioSource audio;
	public string nextSceneName;

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
}
