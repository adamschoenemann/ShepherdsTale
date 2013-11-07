using UnityEngine;
using System.Collections;

public class HealthBar : FaceCamera {

	private Texture2D texture;
	private GameObject player;
	public float width = 30;
	private float percentage = 1.0f;

	// Use this for initialization
	protected override void Start () {
		base.Start();
		player = GameObject.FindGameObjectWithTag(Tags.player);

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
		// int o = 50;
		Vector3 screenPos = cam.camera.WorldToScreenPoint(transform.position);
		float drawWidth = percentage * width;
		//print("percentage: " + percentage);
		GUI.DrawTexture(new Rect(screenPos.x - drawWidth/2, Screen.height - screenPos.y, drawWidth, 3), texture);
	}

	public void SetPercentage(float p)
	{
		percentage = p;
	}

}
