using UnityEngine;
using System.Collections;

public class WoolSpawnerScript : MonoBehaviour {

	public GameObject wool_1;
	public GameObject wool_2;
	public GameObject wool_3;

	private GameObject[] wool = new GameObject[3];
	private Timer timer;
	private int numberOfInstancesToMake = 1;

	// Use this for initialization
	void Start () {
		wool[0] = (wool_1);
		wool[1] = (wool_2);
		wool[2] = (wool_3);

		//timer = new Timer(1000);
	}
	
	
	// Update is called once per frame
	void Update () {

		if(timer != null)
		{
			timer.TickSeconds(Time.deltaTime);
			
			if(timer.IsDone())
			{
				SpawnWool(numberOfInstancesToMake);
				timer = null;
			}
		}
		
	}
	

	// Generate a copy of one of the three wool types, and throw it away.
	public void SpawnWool()
	{
		float indexF = Random.value*3;
		int index = (int)indexF;
		float force = 2.0f * Random.value;

		GameObject.Instantiate(wool[index], transform.position, Quaternion.identity);
		wool[index].rigidbody.AddForce(force * transform.up);
	}

	public void SpawnWool(int number)
	{
		for(int i = 0; i < number; i++)
		{
			SpawnWool();
		}
	}

	public void SpawnWool(float delay, int number)
	{
		timer = new Timer((int)(delay * 1000));
		numberOfInstancesToMake = number;
	}
}
