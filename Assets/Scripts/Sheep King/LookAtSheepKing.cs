using UnityEngine;
using System.Collections;

public class LookAtSheepKing : LookAtGameObject {

	private GameObject sheepKing;

	// Use this for initialization
	void Start () {
		sheepKing = GameObject.FindWithTag(Tags.enemy);
		base.target = sheepKing;
	}
}
