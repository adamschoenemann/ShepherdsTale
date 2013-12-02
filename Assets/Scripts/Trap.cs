using UnityEngine;
using System.Collections;

public class Trap : MonoBehaviour
{
	
	void OnTriggerEnter(Collider other)
	{
		if(other.gameObject.tag == Tags.enemy)
		{
			animation.Play();
			Mortal mortal = other.gameObject.GetComponent<Mortal>();
			mortal.Die();
			audio.Play();
			Destroy(other.gameObject);
		}
	}
}

