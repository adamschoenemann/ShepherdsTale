using UnityEngine;
using System.Collections;

public class SS_SheepButton : MonoBehaviour {
	private bool debug = false;

	GameObject gameController;
	private Timer lightTimer;
	private bool buttonChecked = false;
	public int sheepPos = 0;

	//Light Properties
	private GameObject indicationLight;
	public Color lightColor;
	public int lightIntensity;

	// Use this for initialization
	void Start () 
	{
		//-------------------- Light setup --------------------//
		indicationLight = new GameObject("The Light");
		indicationLight.AddComponent<Light>();
		indicationLight.light.color = lightColor;
		indicationLight.light.type = LightType.Point;
		indicationLight.light.intensity = 0.0f;
		indicationLight.transform.position = transform.position;

		gameController = GameObject.FindGameObjectWithTag(Tags.simonGame);
	}
	
	// Update is called once per frame
	void Update () 
	{
		if(lightTimer != null)
		{
			if(lightTimer.IsDone())
				TurnLightOff();
			else
				lightTimer.TickSeconds(Time.deltaTime); 
		}

		//-------------------- Debug Start --------------------//
		if(debug == true)
		{
			if(Input.GetButtonDown("Fire1"))
				TurnLightOn();
		}
		//--------------------  Debug End  --------------------//
	}

	public bool IsChecked()
	{
		return buttonChecked;
	}


	public void TurnLightOff ()
	{
		indicationLight.light.intensity = 0.0f;
	}

	public void TurnLightOn ()
	{
		indicationLight.light.intensity = lightIntensity;
		lightTimer = new Timer(1000);
	}

	void OnCollisionStay(Collision collision)
	{
		switch(collision.gameObject.tag)
		{
		case Tags.staff:
			if(Input.GetButtonDown("Fire1"))
			{
				gameController.GetComponent<SS_GameRules>().AddToPlayerSequence(sheepPos);
			}
			break;
		default:
			break;
		}
	}
	
}
