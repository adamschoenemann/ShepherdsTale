using UnityEngine;
using System.Collections;

public class ShaveManager : MonoBehaviour {

	public WoolSpawnerScript woolspawner;
	public WoolProgressVisualizer progressVisualization;
	public GameObject quicktimeEvents;
	public GameObject player;
	public float woolSpawnDelay = 0.0f;
	public int woolsToCutOff = 100;

	private QTHandler qtHandler;
	private Animator playerAnim;

	private int correctStreak = 0;
	private int totalCuts = 0;

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
			correctStreak = 0;
		}
		else if(qtHandler.HasMadeCorrect())
		{
			playerAnim.SetTrigger("MadeCut");
			playerAnim.ResetTrigger("MadeError");
			correctStreak++;

			if(correctStreak > 5)
				correctStreak = 5;

			woolspawner.SpawnWool(woolSpawnDelay, correctStreak);
			UpdateTotalCuts();
			progressVisualization.SetProgress(System.Math.Min(1.0f, totalCuts/(float)woolsToCutOff));
		}
	}

	private void UpdateTotalCuts()
	{
		totalCuts += correctStreak;
		//Debug.Log("totalCuts: " + totalCuts);
		if(totalCuts >= woolsToCutOff)
		{
			// Win.
			//Debug.Log("Game over D");
		}
	}


}
