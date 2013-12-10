using UnityEngine;
using System.Collections;

public class Puddle : Loggable {
	
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
		
		loonieRunSpeed = loonie.GetComponent<LoonieRace>().defaultSpeed;
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
			// Send message
			LogEntry entry = new LogEntry(this, "PlayerEnteredMud");
			EnqueueEntry(entry);
		}	
		
		if(other.gameObject == loonie)
		{
			loonie.GetComponent<LoonieRace>().moveSpeed = puddleSpeed;	
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
			loonie.GetComponent<LoonieRace>().moveSpeed = loonieRunSpeed;
		}
	}

	// Logging API ;)
	public override bool ShouldLogRoutinely()
	{
		return false;
	}

	protected override void BeforeEnqueueEntry(LogEntry entry)
	{
		
	}
}
