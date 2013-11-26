using UnityEngine;
using System.Collections;
using System.Collections.Generic;


public class SS_GameRules : MonoBehaviour {

	public int totalMemLength = 10;
	public int numberOfButtons = 4;
	private List<int> memorySequence;
	private List<int> playerSequence;
	private GameObject [] sheepButtons;
	private GameObject sheepKing;

	// Use this for initialization
	void Start () 
	{
		sheepButtons = new GameObject[numberOfButtons];
		memorySequence = new List<int>(totalMemLength);
		playerSequence = new List<int>();

		for(int i = 0; i < totalMemLength; i++)
			memorySequence.Add(Random.Range(0,numberOfButtons));

		sheepButtons = GameObject.FindGameObjectsWithTag(Tags.sheepButton);
		sheepKing = GameObject.FindGameObjectWithTag(Tags.sheepKing);


	}
	
	// Update is called once per frame
	void Update () 
	{
		if(CorrectPlayerSequence() != true)
			print ("Game Over");
		else if(playerSequence.Count < 1)
		{
			Debug.Log("Game started");
			StartGame();
		}
		else if(IsPlayerSequenceDone())
		{
			Debug.Log("Next Sequence");
			NextSequence();
		}
		else
			print("Is this game working?");
	}	

	void StartGame()
	{
		StartCoroutine(PlaySequence(4));

	}

	void NextSequence()
	{

	}

	bool IsPlayerSequenceDone()
	{
		return false;
	}
	
	IEnumerator PlaySequence(int numbersInSequence)
	{
		for(int i = 0; i < numbersInSequence; i++)
		{
			sheepKing.GetComponent<SS_KingController>().TurnTowardsObject(sheepButtons[memorySequence[i]]);
			sheepButtons[memorySequence[i]].GetComponent<SS_SheepButton>().TurnLightOn();
			yield return new WaitForSeconds(1.5f);
		}
	}

	public void AddToPlayerSequence(int buttonPushed)
	{
		playerSequence.Add(buttonPushed);
	}

	public bool CorrectPlayerSequence()
	{
		for(int i = 0; i < playerSequence.Count; i++)
		{
			if(playerSequence[i] != memorySequence[i])
			{
				return false;
			}
		}
		return true;
	}

}
