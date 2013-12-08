using UnityEngine;
using System;
using System.Collections;

public class ShaveManagerEventArgs : EventArgs
{
  public readonly int totalCuts, correctStreak, woolsToCutOff;
  public ShaveManagerEventArgs(int t, int c, int w)
  {
    totalCuts = t;
    correctStreak = c;
    woolsToCutOff = w;
  }
}

public class ShaveManager : MonoBehaviour {

	public WoolSpawnerScript woolspawner;
	public WoolProgressVisualizer progressVisualization;
	public GameObject quicktimeEvents;
	public new ShaveAudioManager audio;
	public GameObject player;
	public float woolSpawnDelay = 0.21f; // Ensure that wool spawn matches shepherd animation
	public int woolsToCutOff = 100;

	private QTHandler qtHandler;
	private Animator playerAnim;

	private Timer endTimer;

	private int correctStreak = 0;
	private int totalCuts = 0;

	// Events
  public event EventHandler<ShaveManagerEventArgs> onUpdateTotalCuts;
  public event EventHandler onLevelCompleted;

	// Use this for initialization
	void Start () {
		qtHandler = (QTHandler)quicktimeEvents.GetComponent("QTHandler");
		playerAnim = (Animator)player.GetComponent("Animator");
	}
	
	// Update is called once per frame
	void Update () {
		if(qtHandler.HasMadeError())
		{
			playerAnim.SetTrigger("MadeError");
			playerAnim.ResetTrigger("MadeCut");
			audio.PlayFail();

			correctStreak = 0;
		}
		else if(qtHandler.HasMadeCorrect())
		{
			playerAnim.SetTrigger("MadeCut");
			playerAnim.ResetTrigger("MadeError");
			audio.PlayCorrect();

			correctStreak++;

			if(correctStreak > 5)
				correctStreak = 5;

			woolspawner.SpawnWool(woolSpawnDelay, correctStreak);
			UpdateTotalCuts();
			progressVisualization.SetProgress(System.Math.Min(1.0f, totalCuts/(float)woolsToCutOff));
		}

		if(endTimer != null)
		{
			endTimer.TickSeconds(Time.deltaTime);

			if(endTimer.IsDone())
			{
				Application.LoadLevel("game_finish");	
			}
		}
	}

	private void UpdateTotalCuts()
	{
		totalCuts += correctStreak;
		if(onUpdateTotalCuts != null)
      		onUpdateTotalCuts(this, new ShaveManagerEventArgs(totalCuts, correctStreak, woolsToCutOff));

		if(totalCuts >= woolsToCutOff)
		{
			// Win.
			if(onLevelCompleted != null)
        		onLevelCompleted(this, EventArgs.Empty);
			
			//Application.LoadLevel("game_finish");
			if(endTimer == null)
				endTimer = new Timer(4.0f);
		}
	}

	void OnGUI()
	{
		if(endTimer != null)
		{
			GUI.Label(
				new Rect(	Screen.width / 3,
							Screen.height / 3,
							Screen.width / 3,
							Screen.height / 3)
				, "You shaved the Sheep King, stealing his power over your sheep!", "box");
		}
	}


}
