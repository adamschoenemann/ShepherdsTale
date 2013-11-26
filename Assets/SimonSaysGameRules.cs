using UnityEngine;
using System.Collections;
using System.Collections.Generic;


public class SimonSaysGameRules : MonoBehaviour {

	int[] memorySequence = new int[100];
	int[] playerSequence = new int[100];
	GameObject [] sheepButtons = new GameObject[4];

	// Use this for initialization
	void Start () 
	{
		for(int i = 0; i < 100; i++)
			memorySequence[i] = Random.Range(0,4);


	
		sheepButtons = GameObject.FindGameObjectsWithTag(Tags.sheepButton);
	}
	
	// Update is called once per frame
	void Update () 
	{


	}	


}
