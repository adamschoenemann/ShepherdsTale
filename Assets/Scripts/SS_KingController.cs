using UnityEngine;
using System.Collections;

public class SS_KingController : MonoBehaviour {
	
	private GameObject gameController;
	private GameObject[] sheepButtons;
	public int numberOfButtons;



	// Use this for initialization
	void Start () 
	{
		gameController = GameObject.FindGameObjectWithTag(Tags.simonGame);
		numberOfButtons = gameController.GetComponent<SS_GameRules>().numberOfButtons;

		sheepButtons = new GameObject[numberOfButtons];
		sheepButtons = GameObject.FindGameObjectsWithTag(Tags.sheepButton);
		SortGameObjects(sheepButtons);

	}
	
	// Update is called once per frame
	void Update () 
	{
		for(int i = 0; i < 4; i++)
		{
			print(sheepButtons[i].GetComponent<SS_SheepButton>().sheepPos);
		}
	}

	public void TurnTowardsObject(GameObject obj)
	{
		transform.LookAt(obj.transform.position);
	}

	void SortGameObjects(GameObject[] arr)
	{
		for (int i = 0; i < arr.Length; i++)
		{
			for (int j = i; j < arr.Length - 1; j++)
			{
				if (arr[j].GetComponent<SS_SheepButton>().sheepPos > arr[j + 1].GetComponent<SS_SheepButton>().sheepPos)
				{
					GameObject temp = arr[j + 1];
					arr[j + 1] = arr[j];
					arr[j] = temp;
				}
			}
		}
	}
}
