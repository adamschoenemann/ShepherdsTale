using UnityEngine;
using System.Collections;

public class WoolSpawnerScript : MonoBehaviour {

	public GameObject wool_1;
	public GameObject wool_2;
	public GameObject wool_3;

	GameObject[] wool = new GameObject[3];

	Timer timer;

	// Use this for initialization
	void Start () {
		wool[0] = (wool_1);
		wool[1] = (wool_2);
		wool[2] = (wool_3);

		timer = new Timer(1000);
	}
	
	// Update is called once per frame
	void Update () {

		timer.TickSeconds (Time.deltaTime);
		if(timer.IsDone())
		{
			float r = Random.value*3;
			int randomNumber = (int)r;

			GameObject.Instantiate(wool[randomNumber], transform.position, Quaternion.identity);

			//print (direction);

			wool[randomNumber].rigidbody.AddForce(transform.up);

			//wool[randomNumber].rigidbody.AddForce(Vector3.up * Physics.gravity.magnitude);


			print(wool[randomNumber]);
			timer = new Timer(1000);
		}



		//print (randomNumber);
	}
}
