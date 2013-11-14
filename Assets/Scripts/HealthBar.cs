using UnityEngine;
using System.Collections;

public class HealthBar : FaceCamera {

	private Texture2D texture;
	public GameObject target;
	private Mortal mortal;
	public float width = 30;
	public float distanceThresh = 10.0f;
	private int maxHealth;

	// Use this for initialization
	protected override void Start () {
		base.Start();
		mortal = target.GetComponent<Mortal>();
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
		if((transform.position - player.transform.position).magnitude > distanceThresh)
		{
			return;
		}
		Vector3 screenPos = cam.camera.WorldToScreenPoint(transform.position);
		float percentage = mortal.GetHealth() / (float) maxHealth;
		float drawWidth = percentage * width;
		//print("percentage: " + percentage);
		GUI.DrawTexture(new Rect(screenPos.x - drawWidth/2, Screen.height - screenPos.y, drawWidth, 3), texture);
	}


}
