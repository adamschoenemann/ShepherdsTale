using UnityEngine;
using System.Collections;

public class EndLevelHandler : MonoBehaviour
{

	public string textToDisplay, nextSceneName;
	public float waitSeconds;
	private Timer goToNextSceneTimer;

	void OnEnable()
	{
		goToNextSceneTimer = new Timer(waitSeconds);
	}

	void OnGUI()
	{
		GUI.Label(new Rect(Screen.width / 3, Screen.height / 3,
						   Screen.width / 3, Screen.height / 3),
							textToDisplay, "box");
	}
	
	// Update is called once per frame
	void Update ()
	{
		if(goToNextSceneTimer.IsDone())
		{
			Application.LoadLevel(nextSceneName);
		}
		else
		{
			goToNextSceneTimer.TickSeconds(Time.deltaTime);
		}
	}
}
