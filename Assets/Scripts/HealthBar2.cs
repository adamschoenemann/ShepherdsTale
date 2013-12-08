using UnityEngine;
using System.Collections;

public class HealthBar2 : FaceCamera {


	public GameObject subject;
	public float width = 30;
	public float distanceThresh = 7.0f;

	private Texture2D texture;
	private Texture2D bgTexture;
	private Mortal mortal;
	private int maxHealth;

	// Use this for initialization
	protected override void Start () {
		base.Start();
		mortal = subject.GetComponent<Mortal>();
		maxHealth = mortal.GetHealth();
		// player = GameObject.FindGameObjectWithTag(Tags.player);

		texture = new Texture2D(1, 1);
		for(int y = 0; y < texture.height; y++)
		{
			for(int x = 0; x < texture.width; x++)
			{
				texture.SetPixel(x, y, Color.red);
			}
		}
		texture.Apply();

		bgTexture = new Texture2D(1, 1);
		for(int y = 0; y < bgTexture.height; y++)
		{
			for(int x = 0; x < bgTexture.width; x++)
			{
				bgTexture.SetPixel(x, y, Color.grey);
			}
		}
		bgTexture.Apply();
	}
	
	// Update is called once per frame
	void Update () {
	}

	void OnGUI()
	{
		if(mortal.IsAlive() == false)
		{
			return;
		}
		GameObject player = GameObject.FindWithTag(Tags.player);
		Vector3 fromHereToCame = transform.position - cam.transform.position;
		if(fromHereToCame.magnitude > distanceThresh)
		{
			return;
		}
		if(Vector3.Dot(fromHereToCame, cam.transform.forward) < 0.0f)
		{
			return;
		}

		Vector3 screenPos = cam.camera.WorldToScreenPoint(transform.position);
		float percentage = mortal.GetHealth() / (float) mortal.startHealth;
		float drawWidth = percentage * width;
		//print("percentage: " + percentage);
		GUI.DrawTexture(new Rect(screenPos.x - width/2, Screen.height - screenPos.y, width, 3), bgTexture);
		GUI.DrawTexture(new Rect(screenPos.x - width/2, Screen.height - screenPos.y, drawWidth, 3), texture);
	}
}