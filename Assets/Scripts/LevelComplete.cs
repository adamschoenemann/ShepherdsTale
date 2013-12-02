using UnityEngine;
using System.Collections;
using System;

public class LevelComplete : MonoBehaviour {

	public static event EventHandler onPlayerEntered;

	void OnTriggerEnter(Collider other)
	{
		if(other.gameObject != null && other.gameObject.tag == Tags.player)	
		{
			if(onPlayerEntered != null)
				onPlayerEntered(this, EventArgs.Empty);
		}
	}

}
