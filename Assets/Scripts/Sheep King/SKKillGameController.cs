using UnityEngine;
using System.Collections;

public class SKKillGameController : MonoBehaviour {

	// Use this for initialization
	void Start () {
		GameObject player = GameObject.FindWithTag(Tags.player);
		Mortal mortal = player.GetComponent<Mortal>();

		mortal.onDeathHandler += (self, killer) => {
			Application.LoadLevel("sheepking_fight");
		};
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
