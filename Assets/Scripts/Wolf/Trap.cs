using UnityEngine;
using System;
using System.Collections;

public class TrapKillEventArgs : EventArgs
{
	public readonly GameObject victim;
	public readonly Vector3 position;
	public TrapKillEventArgs(GameObject v, Vector3 p)
	{
		victim = v;
		position = p;
	}
}

public class TrapEventArgs : EventArgs
{
	public readonly Vector3 position;
	public TrapEventArgs(Vector3 p)
	{
		position = p;
	}
}

public class Trap : MonoBehaviour
{
	
	public event EventHandler<TrapKillEventArgs> onKill;	
	public event EventHandler<TrapEventArgs> onPlaced;
	public event EventHandler<TrapEventArgs> onPickedUp;

	public void Place(Vector3 position, Quaternion rotation)
	{
		transform.position = position;
		transform.rotation = rotation;
		gameObject.SetActive(true);
		if(onPlaced != null)
		{
			onPlaced(this, new TrapEventArgs(transform.position));
		}
	}

	public void PickUp()
	{
		gameObject.SetActive(false);
		if(onPickedUp != null)
		{
			onPickedUp(this, new TrapEventArgs(transform.position));
		}
	}

	void OnTriggerEnter(Collider other)
	{
		if(other.gameObject.tag == Tags.enemy)
		{
			animation.Play();
			Mortal mortal = other.gameObject.GetComponent<Mortal>();
			mortal.Die();
			audio.Play();
			Destroy(other.gameObject);
			if(onKill != null)
			{
				onKill(this, new TrapKillEventArgs(other.gameObject, transform.position));
			}
		}
	}
}

