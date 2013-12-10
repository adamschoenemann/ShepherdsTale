using UnityEngine;
using System.Collections;

public class Lurer : NoiseGenerator
{

	public string lureKey = "v";
	public string trapKey = "c";
	public AudioSource sound;
	public float timeToSetTrap = 1.0f; // Seconds
	private int nTraps = 1;

	public Texture trapIcon;
	private bool atTrap = false;
	private PlayerMovement playermovement;

	private Texture2D setTrapTexture1, setTrapTexture2;
	private Timer setTrapTimer = null;

	private Trap trap;

	void Start()
	{
		trap = GameObject.FindWithTag(Tags.trap).GetComponent<Trap>();
		setTrapTexture1 = new Texture2D(1, 1);
		setTrapTexture2 = new Texture2D(1, 1);
		for(int y = 0; y < setTrapTexture1.height; y++)
		{
			for(int x = 0; x < setTrapTexture1.width; x++)
			{
				setTrapTexture1.SetPixel(x, y, new Color(0.55f, 0.65f, 0.75f, 0.5f));
				setTrapTexture2.SetPixel(x, y, new Color(0.75f, 0.65f, 0.55f, 0.5f));
			}
		}
		setTrapTexture1.Apply();
		setTrapTexture2.Apply();

		playermovement = GetComponent<PlayerMovement>();
	}

	void Update()
	{
		if(Input.GetKeyDown(lureKey))
		{
			sound.Play();
			MakeNoise(15.0f);
		}
		else if(Input.GetKeyDown(trapKey))
		{
			if(atTrap)
			{
				PickupTrap();
			}
			else if(nTraps > 0)
			{
				if(setTrapTimer == null)
				{
					setTrapTimer = new Timer(timeToSetTrap);
					playermovement.Immovable = true;
				}
			}
		}
		else if(Input.GetKeyUp(trapKey))
		{
			setTrapTimer = null;
			playermovement.Immovable = false;
		}

		if(setTrapTimer != null)
		{
			setTrapTimer.TickSeconds(Time.deltaTime);

			if(setTrapTimer.IsDone())
			{
				PlaceTrap();
				setTrapTimer = null;
				playermovement.Immovable = false;
			}
		}
	}

	void PlaceTrap()
	{
		if(nTraps > 0)
		{
			trap.Place(transform.position, transform.rotation);
			nTraps--;
		}
	}

	void PickupTrap()
	{
		nTraps++;
		trap.PickUp();
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

		if(setTrapTimer != null)
		{
			float percentage = setTrapTimer.GetElapsedSeconds() / timeToSetTrap;
			float drawWidth = percentage * 100;
			int startX = Screen.width / 2 - 50;
			int startY = Screen.height / 2 - 10;
			//print("percentage: " + percentage);
			GUI.DrawTexture(new Rect(startX, startY, 100, 20), setTrapTexture1);
			GUI.DrawTexture(new Rect(startX, startY, drawWidth, 20), setTrapTexture2);
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
