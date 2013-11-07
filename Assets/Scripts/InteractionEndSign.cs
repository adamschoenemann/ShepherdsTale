using UnityEngine;
using System.Collections;

public class InteractionEndSign : MonoBehaviour {
	
	public SphereCollider interactionCollider;
	private bool isInteracting = false;
	
	void Awake ()
	{
		interactionCollider = GetComponent<SphereCollider>();
	}
	// Use this for initialization
	void Start () 
	{
	
	}
	
	// Update is called once per frame
	void Update () 
	{
		
	}
	
	void OnTriggerEnter(Collider other)
	{
		if(other.gameObject.tag == Tags.player)
		{
			print("hello End");
			isInteracting = true;
		}
	}
	
	void OnTriggerStay(Collider other)
	{
		if(other.gameObject.tag == Tags.player && Input.GetKeyDown(KeyCode.E))
		{
			Application.LoadLevel("PersonalityTest");
		}
		
	}
	
	void OnTriggerExit(Collider other)
	{
		
		if(other.gameObject.tag == Tags.player)
		{
			print ("bye bye End");
			isInteracting = false;
		}
	}
	
	void OnGUI()
	{
		if(isInteracting == true)
			GUI.Label(new Rect((Screen.width/2)-100,Screen.height/4,200,30),"Press 'E' to end the level","box");
		
	}
}
