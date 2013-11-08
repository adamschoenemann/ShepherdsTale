using UnityEngine;
using System.Collections;

public class TrapScript : MonoBehaviour {
	
	public Transform Exp;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	
	void OnCollisionEnter(Collision other){
		//if(other.gameObject.name == "Hero"){	// Not the clone
		if(other.gameObject.tag == "Enemy")
		{
			//Instantiate(Exp, transform.position, Quaternion.identity);
			Destroy(other.gameObject);	// Destroys the Hero
			//Destroy (gameObject);	// Destroys the enemy
			if(Application.loadedLevelName == "lure")
			{
				GameObject[] wolves = GameObject.FindGameObjectsWithTag(Tags.enemy);
				print(wolves.Length);
				if(wolves.Length <= 1)
				{
					Application.LoadLevel("PersonalityTest");
				}
			}
		}
	}
}

