using UnityEngine;
using System;
using System.Collections;

public class AttackColliderEventArgs : EventArgs
{
	public readonly GameObject attacker, victim;
	public readonly int dmg;
	public AttackColliderEventArgs(GameObject a, GameObject v, int d)
	{
		attacker = a;
		victim = v;
		dmg = d;
	}
}

public class AttackCollider : MonoBehaviour {

	public GameObject target;

	public event EventHandler<AttackColliderEventArgs> onHit;

	void OnTriggerEnter(Collider other){
		GameObject go = other.gameObject;
		if(go.tag == target.tag)
		{
			Mortal mortal = go.GetComponent<Mortal>();
			if(mortal == null)
			{
				print("No mortal found");
				return;
			}

			int dmg = mortal.Damage(1);
			if(dmg > 0)
			{
				print("Doing damage");
				if(onHit != null)
				{
					onHit(this,
								new AttackColliderEventArgs(
									gameObject, target, dmg
								));
				}
			}

		}
	}
}
