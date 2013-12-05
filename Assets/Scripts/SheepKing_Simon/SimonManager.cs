using UnityEngine;
using System.Collections;


/*
	TODO
	Proper end/win
	Proper explanation of the game before starting it.

	Author: TW
*/

public class SimonManager : MonoBehaviour {

	public GameObject[] sheepObjects;
	public GameObject sheepKing;
	public GameObject player;
	public GameObject activator;
	public AudioSource winSound;
	public AudioSource finishedLevelSound;
	public float noteBaseDuration = 1.0f;
	public float delayBeforeShow = 2.0f;
	public int numberOfLevels = 6;
	public int startLevel = 2;

	private SimonSheep[] sheep;
	public enum State { ShowToPlayer, ListenToPlayer, Finished, WaitToStart, WaitToShow };
	public State state;
	private byte[] notes = {3, 0, 1, 3, 1, 3, 2, 1, 3, 1, 2, 1, 0, 1, 3, 1, 3, 1, 3, 2, 3,
							0, 1, 3, 1, 2, 0, 3, 2, 3, 2, 1, 3, 0, 2, 0, 1, 0, 2, 0, 1, 0,
							1, 2, 3, 0, 1, 3, 0, 1, 3, 0, 2, 1, 2, 1, 2, 1, 0, 3, 2, 0, 3,
							1, 0, 1, 2, 1, 0, 1, 3, 0, 1, 0, 3, 1, 0, 1, 2, 3, 0, 1, 3, 0,
							2, 1, 2, 1, 0, 2, 0, 1, 0, 3, 0, 3, 2, 0, 1, 3, 2, 0, 2, 1, 3,
							1, 2, 3, 1, 0, 3, 2, 3, 2, 3, 1, 3, 2, 0, 1, 2, 0, 3, 2, 1, 0,
							2, 3, 1, 3, 2, 3, 0, 3, 2, 1, 3, 0, 1, 3, 0, 2, 1, 2, 0, 1, 0,
							2, 1, 0, 3, 1, 3, 2, 3, 0, 1, 3, 0, 1, 3, 0, 2, 1, 3, 0, 3, 1,
							0, 1, 0, 1, 2, 0, 1, 3, 2, 1, 2, 3, 1, 2, 0, 3, 1, 2, 1, 3, 0,
							1, 2, 1, 0, 2, 0, 3, 0, 3, 2, 1, 3, 1, 0, 1, 3, 1, 2, 1, 2, 1,
							3, 0, 3, 2, 1, 0, 1, 3, 2, 3, 0, 2, 3, 2, 0, 2, 0, 2, 3, 0, 3,
							1, 0, 3, 0, 3, 2, 1, 0, 1, 0, 2, 1, 0, 3, 1, 3, 1, 2, 1, 0, 3,
							1, 0, 2, 0, 2, 0, 1, 2, 3, 1, 2, 0, 1, 0, 3, 1, 2, 1, 2, 1, 0,
							2, 3, 1, 3, 0, 1, 2, 1, 2, 3, 2, 3, 2, 3, 2, 1, 0, 3, 1, 2, 0,
							2, 3, 1, 0, 2, 3, 0, 3, 2, 0, 1, 3, 2, 0, 3, 0, 3, 0, 3, 2, 1,
							3, 1, 3, 0, 3, 1, 3, 1, 2, 0, 3, 0, 3, 1, 0, 3, 2, 3, 1, 2, 0,
							2, 0, 2, 0, 1, 3, 0, 3, 0, 2, 0, 2, 0, 1, 3, 1, 3, 1, 2, 1, 3,
							1, 2, 3, 1, 0, 2, 3, 0, 3, 0, 2, 0, 3, 0, 1, 3, 0, 2, 0, 3, 2,
							1, 0, 3, 0, 2, 3, 2, 0, 3, 2, 0, 3, 0, 2, 0, 1, 2, 0, 2, 1, 3,
							2, 1, 2, 1, 2, 0, 2, 0, 2, 1, 3, 2, 1, 3, 1, 0, 3, 1, 0, 3, 0,
							3, 2, 0, 1, 3, 0, 2, 1, 0, 2, 3, 0, 1, 2, 0, 1, 3, 0, 2, 0, 2,
							0, 2, 1, 3, 1, 2, 1, 0, 1, 2, 1, 3, 2, 1, 3, 0, 1, 2, 1, 2, 0,
							1, 0, 3, 2, 3, 2, 1, 2, 3, 2, 1, 2, 3, 0, 2, 3, 0, 2, 1, 0, 3,
							1, 2, 0, 2, 1, 2, 1, 2, 0, 2, 1, 3, 2, 3, 2, 1, 3, 1, 2, 3, 1,
							3, 1, 0, 2, 1, 2, 3, 2, 3, 0, 3, 2, 0, 3, 1, 2, 3, 0, 1, 3, 1,
							2, 1, 0, 2, 3, 1, 2, 3, 0, 1, 0, 1, 3, 0, 3, 2, 3, 2, 1, 3, 2,
							3, 2, 0, 2, 1, 3, 2, 3, 2, 1, 0, 3, 2, 0, 3, 2, 1, 2, 0, 1, 2,
							1, 2, 3, 0, 1, 2, 3, 2, 1, 0, 1, 3, 1, 3, 2, 0, 2, 3, 0, 3, 2,
							3, 2, 3, 1, 2, 1, 0, 3, 0, 3, 2, 0, 2, 3, 1, 3, 1, 0, 2, 1, 3,
							0, 3, 0, 3, 1, 0, 2, 0, 1, 0, 2, 3, 1, 3, 1, 2, 0, 1, 0, 1, 3,
							0, 1, 2, 1, 2, 3, 0, 2, 1, 2, 3, 2, 3, 0, 1, 3, 1, 3, 0, 1, 0,
							2, 1, 0, 2, 3, 1, 3, 2, 1, 0, 1, 3, 0, 3, 0, 2, 0, 2, 1, 2, 1,
							2, 1, 3, 2, 3, 2, 0, 2, 1, 0, 1, 0, 3, 2, 3, 1, 0, 3, 1, 2, 1,
							2, 1, 2, 0, 1, 0, 1, 3, 1, 0, 3, 0, 3, 0, 2, 1, 2, 0, 2, 3, 2,
							0, 3, 0, 2, 1, 0, 3, 0, 1, 0, 2, 3, 1, 2, 1, 0, 1, 2, 3, 2, 0,
							1, 0, 3, 2, 0, 1, 2, 3, 2, 0, 3, 0, 2, 1, 3, 0, 1, 0, 3, 2, 0,
							2, 3, 0, 3, 0, 2, 0, 3, 2, 1, 0, 2, 3, 1, 3, 2, 3, 0, 1, 2, 3,
							2, 1, 3, 0, 1, 3, 0, 2, 3, 1, 0, 2, 1, 3, 0, 3, 0, 2, 0, 3, 0,
							3, 0, 2, 0, 3, 1, 3, 2, 0, 1, 3, 1, 0, 3, 0, 2, 1, 3, 2, 3, 2,
							3, 2, 1, 2, 0, 3, 0, 2, 3, 2, 0, 2, 0, 1, 2, 3, 0, 3, 1, 2, 3,
							2, 0, 2, 1, 3, 0, 2, 0, 3, 1, 3, 1, 2, 3, 1, 2, 1, 2, 3, 1, 2,
							1, 0, 1, 2, 1, 2, 0, 2, 0, 2, 1, 3, 0, 1, 3, 2, 3, 2, 1, 2, 0,
							2, 1, 3, 2, 3, 1, 2, 0, 2, 1, 2, 0, 1, 0, 1, 2, 0, 2, 1, 3, 0,
							2, 1, 0, 2, 0, 3, 2, 0, 3, 2, 1, 2, 1, 3, 1, 3, 1, 0, 2, 3, 2,
							1, 3, 2, 1, 0, 1, 2, 0, 3, 1, 3, 1, 0, 2, 1, 3, 0, 1, 0, 1, 0,
							1, 3, 2, 0, 2, 1, 0, 1, 2, 0, 1, 3, 2, 3, 2, 3, 0, 1, 2, 0, 2,
							0, 1, 3, 1, 0, 3, 2, 1, 2, 0, 2, 0, 2, 0, 3, 2, 3, 1, 2, 1, 3,
							2, 0, 3, 0, 3, 0, 1, 0, 1, 3, 1, 2, 3, 1, 0, 3, 1, 0, 2, 3, 1,
							0, 1, 3, 0, 1, 3, 0, 2, 0, 2, 0, 3, 2, 0, 1, 0, 3, 2, 1, 0, 3,
							1, 2, 1, 2, 3, 0, 1, 2, 1, 3, 0, 1, 0, 1, 3, 0, 2, 1, 2, 0, 1,
							0, 3, 0, 1, 0, 3, 0, 1, 3, 2, 0, 2, 3, 2, 3, 2, 0, 2, 3, 0, 1,
							2, 1, 0, 2, 1, 2, 3, 0, 3, 1, 2, 0, 1, 2, 1, 0, 1, 0, 3, 2, 3,
							2, 1, 3, 0, 3, 1, 0, 3, 2, 3, 0, 3, 0, 3, 0, 1, 0, 2, 3, 2, 1,
							0, 3, 2, 1, 2, 3, 1, 2, 0, 1, 0, 3, 1, 3, 2, 3, 0, 3, 0, 3, 0,
							3, 2, 3, 2, 3, 0, 1, 2, 0, 2, 1, 0, 3, 0, 1, 0, 1, 2, 3, 1, 3,
							1, 2, 3, 0, 2, 0, 1, 2, 0, 2, 3, 2, 3, 0, 2, 3, 2, 1, 2, 3, 2,
							0, 1, 2, 1, 0, 3, 0, 3, 1, 0, 2, 1, 2, 3, 2, 1, 3, 2, 1, 3, 2,
							1, 2, 1, 3, 2, 3, 0, 1, 3, 1, 0, 2, 0, 1, 2, 3, 1, 2, 3, 1, 3,
							2, 3, 2, 0, 3, 0, 1, 3, 0, 1, 2, 1, 2, 3, 1, 0, 2, 3, 0, 2, 1,
							3, 1, 0, 1, 3, 0, 3, 2, 0, 2, 0, 3, 1, 0, 3, 1, 3, 2, 3, 2, 3,
							2, 3, 0, 1, 3, 1, 3, 1, 2, 0, 2, 3, 2, 0, 3, 2, 1, 2, 3, 1, 2,
							3, 2, 0, 2, 1, 3, 2, 0, 2, 0, 3, 2, 3, 0, 1, 0, 1, 3, 1, 3, 1,
							2, 0, 3, 2, 0, 3, 1, 2, 3, 1, 0, 1, 3, 0, 1, 2, 3, 1, 3, 2, 1,
							0, 3, 1, 2, 1, 0, 3, 0, 3, 2, 1, 0, 1, 3, 0, 1, 0, 2, 0, 3, 2,
							1, 2, 1, 3, 1, 3, 0, 1, 2, 1, 2, 0, 1, 0, 3, 2, }; // Sorry about the length, but I hate when SK gets stuck by not knowing enough notes. -TW
	private int level;
	private int progress = 0;

	private Timer noteDurationTimer;
	private Timer waitToShowTimer;

	public bool playerMadeMistake;

	// Initialization
	void Start () {
		level = startLevel;
		sheep = new SimonSheep[sheepObjects.Length];

		for(int i = 0; i < sheep.Length; i++)
		{
			sheep[i] = (SimonSheep)sheepObjects[i].GetComponent("SimonSheep");
		}

		noteDurationTimer = new Timer(noteBaseDuration);
		waitToShowTimer = new Timer(delayBeforeShow);

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
				WaitToShow();
				break;
			case State.WaitToStart:
				WaitForPlayerToActivateShow();
				break;
			case State.Finished:
				if(!winSound.isPlaying)
				{
					Application.LoadLevel("game_finish");
				}
				break;
		}
	}

	private void StartGame()
	{
		GoToState(State.WaitToStart);
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

			playerMadeMistake = false;
			
			if(progress > level)
			{
				level++;
				noteDurationTimer.Reset();
				//noteDurationTimer = new Timer(noteBaseDuration * (1.0f - 0.4f *((numberOfLevels - level) / (float)numberOfLevels)));
				finishedLevelSound.Play();

				if(level >= numberOfLevels + startLevel)
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
					GoToState(State.WaitToShow);
				}
			}
		}
		else if(sheepHit > -1)
		{
			// FLAG
			playerMadeMistake = true;

			// Activate all sheep at once, and go back to first level
			foreach(SimonSheep s in sheep)
			{
				s.Activate();
			}

			//Debug.Log("Hit wrong sheep: " + sheepHit + " shouldve hit " + notes[progress] + " at " + progress);

			progress = 0;
			//level = startLevel;
			GoToState(State.WaitToShow);
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

	private void WaitToShow()
	{
		waitToShowTimer.TickSeconds(Time.deltaTime);

		if(waitToShowTimer.IsDone())
		{
			waitToShowTimer.Reset();
			GoToState(State.ShowToPlayer);
		}
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
