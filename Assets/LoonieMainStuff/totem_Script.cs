using UnityEngine;
using System.Collections;

public class totem_Script : MonoBehaviour {

	public GameObject loonie;
	LoonieController loonieController;

	public GameObject player;

	// Use this for initialization
	void Start () {
		loonie = GameObject.FindGameObjectWithTag("Enemy");
		loonieController = loonie.GetComponent<LoonieController>();

		player = GameObject.FindGameObjectWithTag("Player");
	}
	
	// Update is called once per frame
	void Update () {
		if(loonieController.state == Wolf.State.Alerted)
		{
			transform.LookAt(player.transform.position);
		}
	}
}
