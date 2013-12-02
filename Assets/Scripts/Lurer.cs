using UnityEngine;
using System.Collections;

public class Lurer : NoiseGenerator
{

	public string lureKey = "v";
	public string trapKey = "c";
	public AudioSource sound;
	public GameObject trap;
	private int nTraps = 1;

	public Texture trapIcon;
	private bool atTrap = false;

	void Update()
	{
		if(Input.GetKeyDown(lureKey))
		{
			sound.Play();
			MakeNoise(10.0f);
		}
		if(Input.GetKeyDown(trapKey))
		{
			if(atTrap)
			{
				PickupTrap(GameObject.FindWithTag(Tags.trap));
			}
			else
			{
				PlaceTrap();
			}
		}
	}

	void PlaceTrap()
	{
		if(nTraps > 0)
		{
			GameObject.Instantiate(trap, transform.position, transform.rotation);
			nTraps--;
		}
	}

	void PickupTrap(GameObject trap)
	{
		nTraps++;
		Destroy(trap);
		atTrap = false;
	}

	void OnGUI()
	{
		if(trapIcon != null)
		{
			if(nTraps > 0)
			{
				int w = 30, h = 30, x = 5, y = Screen.height - h - 5;
				GUI.DrawTexture(new Rect(x, y, w, h),
												trapIcon);
			}
		}
	}

	void OnTriggerEnter(Collider other)
	{
		if(other.gameObject.tag == Tags.trap)		
		{
			atTrap = true;
		}
	}

	void OnTriggerExit(Collider other)
	{
		if(other.gameObject.tag == Tags.trap)	
		{
			atTrap = false;
		}
	}


}
