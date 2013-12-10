using UnityEngine;
using System.Collections;

public class ManagerScript : Loggable {
	
	private int _boxesInPlace;
	public int boxesInPlace
	{
		set 
		{
			_boxesInPlace = value; 
			LogEntry entry = new LogEntry(this, "BoxesInPlace")
				.AddInt("NewTotal", _boxesInPlace);
			EnqueueEntry(entry);
		}
		get { return _boxesInPlace; }
	}

	public GameObject port;

	private Timer endTimer;
	
	// Use this for initialization
	void Start () {
		boxesInPlace = 0;
	}
	
	// Update is called once per frame
	void Update () {
		//print(boxesInPlace);
		if(boxesInPlace == 8)
		{					
			Destroy(port);

			if(endTimer == null)
				endTimer = new Timer(4.0f);
			//Application.LoadLevel("loonie_finish");
		} 
		else if(Input.GetKeyDown("q"))
		{
			Application.LoadLevel("loonie_puzzle");
		}

		if(endTimer != null)
		{
			endTimer.TickSeconds(Time.deltaTime);

			if(endTimer.IsDone())
			{
				Application.LoadLevel("loonie_finish");	
			}
		}
	}

	void OnGUI()
	{
		if(endTimer != null)
		{
			GUI.Label(
				new Rect(	Screen.width / 3,
							Screen.height / 3,
							Screen.width / 3,
							Screen.height / 3)
				, "You beat the Loonie's puzzle!", "box");
		}
		else
		{
			GUI.Box(new Rect(	Screen.width/3, Screen.height - 50,
							Screen.width/3, 50), "If needed, press Q to restart level.");	
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
