using UnityEngine;
using System.Collections;

public class FinishGame : MonoBehaviour {

	public MovieTexture movie;
	public AudioSource audio;

	private Timer endGame;

	// Use this for initialization
	void Start () 
	{
		if(movie != null)
		{
			movie.Play();
			audio.Play();
			endGame = new Timer(movie.duration);
		}
		else
		{
			endGame = new Timer(4.0f);
		}
	}
	
	// Update is called once per frame
	void Update () 
	{
		endGame.TickSeconds(Time.deltaTime);

		if(endGame.IsDone())
		{
			Application.Quit();
		}
	}
}
