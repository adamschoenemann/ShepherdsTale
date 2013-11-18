using UnityEngine;
using System.Collections;

public class AttackCollider : MonoBehaviour {

	public GameObject target;

	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
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

			mortal.Damage(1);

		}
	}
}
