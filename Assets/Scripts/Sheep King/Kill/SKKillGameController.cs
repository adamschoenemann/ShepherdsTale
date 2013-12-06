using UnityEngine;
using System.Collections;

public class SKKillGameController : MonoBehaviour {

	// Use this for initialization
	void Start () {
		GameObject player = GameObject.FindWithTag(Tags.player);
		Mortal playerMortal = player.GetComponent<Mortal>();

		playerMortal.onDeathHandler += (self, killer) => {
			Application.LoadLevel("sheepking_fight");
		};

		GameObject sheepking = GameObject.FindWithTag(Tags.enemy);
		Mortal sheepkingMortal = sheepking.GetComponent<Mortal>();

		sheepkingMortal.onDeathHandler += (self, killer) => {
			Debug.Log("Loooooooaod game_finish!");
			Application.LoadLevel("game_finish"); // ATM this is not working. Level is loaded in SK_KillScript.Awake(), in the onDeathHandler.
		};
	}
}
