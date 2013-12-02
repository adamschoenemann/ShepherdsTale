using UnityEngine;
using System.Collections;

public class ButtonScript : MonoBehaviour {
	
	public GameObject otherGO;
	ManagerScript manager;
	
	// Use this for initialization
	void Start () {
		//otherGO = GameObject.FindGameObjectWithTag("Box");
		manager = otherGO.GetComponent<ManagerScript>();
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	
	void OnTriggerEnter(Collider other)
	{
		if(other.gameObject.tag == "Box")
		{
			manager.boxesInPlace ++;
		}
	}
	
	void OnTriggerExit(Collider other)
	{
		if(other.gameObject.tag == "Box")
		{
			manager.boxesInPlace --;
		}
	}
	
}
