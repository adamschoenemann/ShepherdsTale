using UnityEngine;
using System.Collections;

public class ManagerScript : MonoBehaviour {
	
	public int boxesInPlace;
	
	public GameObject port;
	
	// Use this for initialization
	void Start () {
		boxesInPlace = 0;
	}
	
	// Update is called once per frame
	void Update () {
		//print(boxesInPlace);
		if(boxesInPlace == 8)
		{
			print ("Gratulations!");
			Destroy(port);
		}
		
		if(Input.GetButtonDown("Fire3"))
		{
			Application.LoadLevel("maze_Loonie");
		}
	}
}
