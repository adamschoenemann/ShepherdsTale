using UnityEngine;
using System;
using System.Collections;

public class CherryEventArgs : EventArgs
{
	public int health;
	public Vector3 position;
	public CherryEventArgs(int h, Vector3 p)
	{
		health = h;
		position = p;
	}
}

public class Cherry : MonoBehaviour
{

	public event EventHandler<CherryEventArgs> onPickUp;
	public int health = 5;

	void OnTriggerEnter(Collider other)
	{
		GameObject go = other.gameObject;
		if(go.tag == Tags.player)	
		{
			print("Cherry -> Player");
			StartCoroutine(BePickedUp(go));
		}
	}

	private IEnumerator BePickedUp(GameObject go)
	{
		Mortal mortal = go.GetComponent<Mortal>();
		mortal.AddHealth(health);
		Utils.DisableChildRenderers(transform);
		audio.Play();
		onPickUp(this, new CherryEventArgs(health, transform.position));
		while(audio.isPlaying == true)
		{
			yield return true;
		}
		Destroy(gameObject);
	}

}