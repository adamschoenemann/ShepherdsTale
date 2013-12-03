using UnityEngine;
using System.Collections;

public class LightLoonieFight : MonoBehaviour {

	bool lightIncrease;

	public GameObject loonie;
	LoonieController loonieScript;

	Color startColor;

	// Use this for initialization
	void Start () {
		loonie = GameObject.FindGameObjectWithTag("Enemy");
		loonieScript = loonie.GetComponent<LoonieController>();
		startColor = new Color(0.500f, 0.493f, 1.0f); 
		light.color = startColor;
	}
	
	// Update is called once per frame
	void Update () {
		if(loonieScript.state == Wolf.State.Alerted)
		{
			light.color = Color.red; 
		}

		if(loonieScript.state == Wolf.State.Returning)
		{
			light.color = startColor; 
		}
	}
}
