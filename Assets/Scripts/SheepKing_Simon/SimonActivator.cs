using UnityEngine;
using System.Collections;

public class SimonActivator : MonoBehaviour {

	private bool isHit = false;

	void OnTriggerEnter(Collider other)
	{
		GameObject o = other.gameObject;
		if(o.tag == Tags.player)
		{
			isHit = true;
			particleSystem.Stop();
		}
	}

	public void Listen()
	{
		particleSystem.Play();
	}

	public bool IsHit()
	{
		bool output = isHit;
		isHit = false;
		return output;
	}
}
