using UnityEngine;
using System.Collections;

public class Puddle : MonoBehaviour {
	
	private float playerRunSpeed;
	private float loonieRunSpeed;
	public float puddleSpeed = 150.0f;
	
	private GameObject player;
	private GameObject loonie;

	// Use this for initialization
	void Start () 
	{
		player = GameObject.FindGameObjectWithTag(Tags.player);
		loonie = GameObject.FindGameObjectWithTag(Tags.loonie);
		
		loonieRunSpeed = loonie.GetComponent<LoonieRace>().moveSpeed;
		playerRunSpeed = player.GetComponent<PlayerMovement>().runSpeed;
	}
	
	// Update is called once per frame
	void Update () 
	{
	
	}
	
	void OnTriggerEnter (Collider other)
	{
		if(other.gameObject == player)
		{
			player.GetComponent<PlayerMovement>().runSpeed = puddleSpeed;	
		}	
		
		if(other.gameObject == loonie)
		{
			loonie.GetComponent<Enemy>().moveSpeed = puddleSpeed;	
		}
		
	}
	
	void OnTriggerExit (Collider other)
	{
		if(other.gameObject == player)
		{
			player.GetComponent<PlayerMovement>().runSpeed = playerRunSpeed;
		}	
		
		if(other.gameObject == loonie)
		{
			loonie.GetComponent<Enemy>().moveSpeed = loonieRunSpeed;
		}
		
		
	}
}
