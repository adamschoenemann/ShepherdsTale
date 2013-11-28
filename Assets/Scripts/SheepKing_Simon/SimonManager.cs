using UnityEngine;
using System.Collections;


/*
	TODO
	Proper end/win

	DONE Only activate field in the beginning
	DONE Enhance lighting so that sheep don't light each other up, but just themselves	
	DONE Make note implementation so that each new level is a new set of notes


	Note from user test
	User could not by himself guess what to do - thought he had to hit the 'sheep' lighting up
	during showtime, didn't understand he had to wait and observe SKs playing order.
	K User did not make conscious use of glitter field.
	K User thought there would be more levels.
*/

public class SimonManager : MonoBehaviour {

	public GameObject[] sheepObjects;
	public GameObject sheepKing;
	public GameObject player;
	public GameObject activator;
	public AudioSource winSound;
	public float noteBaseDuration = 1.0f;
	public int numberOfLevels = 10;

	private SimonSheep[] sheep;
	private enum State { ShowToPlayer, ListenToPlayer, Finished, WaitToShow };
	private State state;
	private byte[] notes = {3,0,1,2,0,2,0,3,2,3,0,1,2,0,1,0,3,1,2,3,0,1,2,3,0,3,0,1,2,1,2,1,0,2,3,2,0,1,0,3,1,3,2,1,0,2,1,0,1,2};
	private static readonly int startLevel = 2;
	private int level = startLevel;
	private int progress = 0;

	// For testing
	private bool mustEnterGlitter = true;

	private Timer noteDurationTimer;

	// Use this for initialization
	void Start () {
		sheep = new SimonSheep[sheepObjects.Length];

		for(int i = 0; i < sheep.Length; i++)
		{
			sheep[i] = (SimonSheep)sheepObjects[i].GetComponent("SimonSheep");
		}

		noteDurationTimer = new Timer(noteBaseDuration);
		state = State.WaitToShow;

		StartGame();
	}
	
	// Update is called once per frame
	void Update () {
		switch(state)
		{
			case State.ShowToPlayer:
				ShowToPlayer();
				break;
			case State.ListenToPlayer:
				ListenToPlayer();
				break;
			case State.WaitToShow:
				WaitForPlayerToActivateShow();
				break;
		}
	}

	private void StartGame()
	{
		GoToState(State.WaitToShow);
		((SimonActivator)(activator.GetComponent("SimonActivator"))).Listen();
	}

	private void ShowToPlayer()
	{
		if(noteDurationTimer.IsDone())
		{
			noteDurationTimer.Reset();

			// Play next note, or change state
			if(progress <= level)
			{
				// Play next note
				sheep[GetNoteAt(level, progress)].Activate();
				progress++;
			}
			else
			{
				// Clean sheep interaction history
				foreach(SimonSheep s in sheep)
				{
					s.IsHit();
				}

				// Change state
				GoToState(State.ListenToPlayer);
				progress = 0;
			}

		}
		else
		{
			noteDurationTimer.TickSeconds(Time.deltaTime);
		}

		SheepKingLookAt(sheep[GetNoteAt(level, progress - 1 >= 0 ? progress - 1 : 0)].gameObject);
	}

	private void ListenToPlayer()
	{
		// Check sheep for whether they have been hit
		int sheepHit = -1;
		for(int i = 0; i < sheep.Length; i++)
		{
			if(sheep[i].IsHit())
			{
				sheepHit = i;
				break;
			}
		}

		// Determine if the sheep hit is the right one
		if(sheepHit == GetNoteAt(level, progress))
		{
			// If it is, activate only that
			sheep[sheepHit].Activate();
			progress++;

			if(progress > level)
			{
				level++;
				noteDurationTimer = new Timer(noteBaseDuration * (1.0f - 0.4f *((numberOfLevels - level) / (float)numberOfLevels)));

				if(level >= numberOfLevels)
				{
					// win; finish game
					GoToState(State.Finished);
					Debug.Log("You won the game!");
					winSound.Play();
				}
				else
				{
					// Go to next level
					progress = 0;
					GoToState(State.ShowToPlayer);
				}
			}
		}
		else if(sheepHit > -1)
		{
			// Activate all sheep at once, and go back to first level
			foreach(SimonSheep s in sheep)
			{
				s.Activate();
			}

			//Debug.Log("Hit wrong sheep: " + sheepHit + " shouldve hit " + notes[progress] + " at " + progress);

			progress = 0;
			level = startLevel;
			GoToState(State.ShowToPlayer);
		}

		SheepKingLookAt(player);
	}

	private void WaitForPlayerToActivateShow()
	{
		// if activation area is intersecting player, go!
		if( ((SimonActivator)(activator.GetComponent("SimonActivator"))).IsHit())
		{
			GoToState(State.ShowToPlayer);
		}

		SheepKingLookAt(player);
	}

	private void GoToState(State state)
	{
		this.state = state;
	}

	protected virtual void RotateTowards(Transform source, Quaternion rotation, float turnSpeed, float margin = 0.99f)
	{
		if(Quaternion.Dot(source.rotation, rotation) < margin)
		{
			source.rotation = Quaternion.Lerp(source.rotation, rotation, turnSpeed * Time.deltaTime);
		}
		else if(source.rotation == rotation)
		{
			return;
		}
		else
		{
			source.rotation = rotation;
		}
	}

	protected virtual void LookAtLerp(Transform beholder, Transform target, float turnSpeed)
	{
		Vector3 direction = (target.position - beholder.position);
		Quaternion targetRotation = Quaternion.LookRotation(direction.normalized);
		RotateTowards(beholder, targetRotation, turnSpeed);
	}

	private void SheepKingLookAt(GameObject target)
	{
		LookAtLerp(sheepKing.transform, target.transform, 6.0f);
	}

	private int GetNoteAt(int level, int progress)
	{
		return notes[GetNoteIndexAt(level, progress)];
	}

	private int GetNoteIndexAt(int level, int progress)
	{
		int i = level;
		for(int k = 1; k < level; k++)
		{
			i += k;
		}

		i += progress;
		i -= startLevel;

		return i;
	}
}
