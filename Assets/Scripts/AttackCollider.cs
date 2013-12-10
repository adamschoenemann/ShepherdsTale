using UnityEngine;
using System.Collections;

public class AttackCollider : MonoBehaviour {

	public GameObject target;

	void Awake()
	{
		if(target == null)
		{
			target = GameObject.FindWithTag(Tags.player);
		}
	}

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

			mortal.Damage(1, transform.parent.gameObject);
			print("Doing damage");

		}
	}
}
