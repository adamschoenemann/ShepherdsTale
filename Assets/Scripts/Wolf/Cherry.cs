using UnityEngine;
using System.Collections;

public class Cherry : MonoBehaviour {

	public int health = 5;

	void OnTriggerEnter(Collider other)
	{
		GameObject go = other.gameObject;
		if(go.tag == Tags.player)	
		{
			Mortal mortal = go.GetComponent<Mortal>();
			mortal.AddHealth(health);
			Destroy(gameObject);
		}
	}

}
