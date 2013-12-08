using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;

/**
 * There should only EVER BE ONE OF THESE IN A PROJECT!!!!
 * @type {[type]}
 */
public class Logger : MonoBehaviour
{

	public static Logger instance {get; private set;}
	public int scene_id { get; private set; }
	public bool enabled = true;

	public bool IsActive()
	{
		return (instance != null && this == instance && enabled);
	}

	void Awake()
	{
		if(enabled == false) return;
		if(instance != null && instance != this)
		{
			Destroy(gameObject);
			CancelInvoke();
			Debug.LogError("Multiple Loggers found!!");
			return;
		}
		Debug.Log("Setting Logger instance");
		instance = this;
		GameObject.DontDestroyOnLoad(gameObject);
		SetupLogging();
	}

	private void SetupLogging()
	{
		StartCoroutine(LogAPI.instance.StartSession(this)); // Register session
		StartCoroutine(RegisterScene()); // register scene
	}

	void OnLevelWasLoaded()
	{
		if(IsActive() == false) return;
		Debug.Log("Logger " + gameObject.GetInstanceID() + ": OnLevelWasLoaded");
		StartCoroutine(RegisterScene());
	}

	void OnApplicationQuit()
	{
		if(IsActive() == false) return;
		if(LogAPI.instance.Enqueued() > 0)
		{
			StartCoroutine(LogAPI.instance.Flush(this));
		}
		StartCoroutine(LogAPI.instance.CloseScene(scene_id, this));
		StartCoroutine(LogAPI.instance.StopSession(this));
	}

	private IEnumerator RegisterScene()
	{
		if(IsActive() == false) yield return false;
		while(LogAPI.instance.session_id == 0)
		{
			yield return new WaitForSeconds(0.5f);
		}
		if(scene_id != 0)
		{
			// Unregister current scene
			if(LogAPI.instance.Enqueued() > 0)
			{
				StartCoroutine(LogAPI.instance.Flush(this));
			}
			StartCoroutine(LogAPI.instance.CloseScene(scene_id, this));
		}
		StartCoroutine(LogAPI.instance.RegisterScene(
			Application.loadedLevelName,
			Time.time,
			this,
			id => {
				scene_id = id;
				Debug.Log("Scene registered with id: " + id);
			}
		));
	}


	public void RegisterLoggable(Loggable l, Action<int> cb = null)
	{
		if(IsActive() == false) return;
		StartCoroutine(LogAPI.instance.RegisterLoggable(l, this, cb));
	}

	public void Enqueue(LogEntry entry)
	{
		if(IsActive() == false) return;

		entry.scene_id = scene_id;
		entry.AddFloat("fps", 1.0f/Time.deltaTime);
		if(LogAPI.instance.Enqueue(entry))
		{
			StartCoroutine(LogAPI.instance.Flush(this));
		}

	}

	public void SendQuestionnaire(string[] answers)
	{
		StartCoroutine(SendAnswers(answers));
	}

	private IEnumerator SendAnswers(string[] answers)
	{
		while(LogAPI.instance.session_id == 0 || scene_id == 0)
		{
			yield return new WaitForSeconds(0.5f);
		}

		WWWForm form = new WWWForm();
		form.AddField("session_id", LogAPI.instance.session_id);

		form.AddField("timestamp", answers[0]);
		form.AddField("gender", answers[1]);
		form.AddField("age", answers[2]);
		form.AddField("nationality", answers[3]);

		// Join answers
		StringBuilder sb = new StringBuilder();
		for(int i = 4; i < answers.Length - 1; i++)
		{
			sb.Append(answers[i]).Append("|");
		}
		sb.Append(answers[answers.Length - 1]);
		form.AddField("answers", sb.ToString());

		string url = "http://www.adamschoenemann.dk/api/answers";
		WWW www = new WWW(url, form);
		yield return www;
		if(String.IsNullOrEmpty(www.error) == false)
		{
			yield return StartCoroutine(Utils.RetryConnection(www, form));
		}
		if(String.IsNullOrEmpty(www.error))
		{
			Debug.Log("Questionnaire posted succesfully");
		}
		else
		{
			Debug.Log(www.error);
		}
	}

}

// public class Logger : MonoBehaviour
// {

// 	public int scene_id {get; private set;}
// 	public bool enabled = true;
// 	public float time {private set; get;}
// 	private Queue<LogEntry> waitingQueue = new Queue<LogEntry>(10);
	
// 	void Awake()
// 	{
// 		GameObject controllerObj = GameObject.FindWithTag(Tags.gameController);
// 		if(controllerObj == null)
// 		{
// 			Debug.Log("No GameController found!");
// 			return;
// 		}
// 		GameController gc = controllerObj.GetComponent<GameController>();

// 		// GameObject.DontDestroyOnLoad(gameObject);

// 		if(gc != null)
// 		{
// 			gc.onLevelRestarting += (obj, args) => {
// 				enabled = false;
// 				StartCoroutine(LogAPI.instance.Flush());
// 				StartCoroutine(LogAPI.instance.CloseScene(this));
// 			};
// 		}
// 	}

// 	public void RegisterLoggable(Loggable l, Action<int> cb = null)
// 	{
// 		StartCoroutine(LogAPI.instance.RegisterLoggable(l, this, cb));
// 	}

// 	void Start()
// 	{
// 		if(enabled == false)
// 			return;
// 		scene_id = 0;
// 		time = Time.time;
// 		StartCoroutine(LogAPI.instance.StartSession());
// 		StartCoroutine(
// 			LogAPI.instance.RegisterScene(
// 				Application.loadedLevelName, 
// 				this,
// 				(id) => {
// 					scene_id = id;
// 					Debug.Log("scene_id: " + scene_id);
// 				}
// 			)
// 		);
// 	}

// 	public void Enqueue(LogEntry entry)
// 	{
// 		if(enabled == false)
// 			return;

// 		if(scene_id == 0 || LogAPI.instance.session_id == 0)
// 		{
// 			waitingQueue.Enqueue(entry);
// 		}
// 		else if(waitingQueue.Count > 0)
// 		{
// 			LogEntry[] waitingEntries = new LogEntry[waitingQueue.Count];
// 			waitingQueue.CopyTo(waitingEntries, 0);
// 			waitingQueue.Clear();
// 			foreach(LogEntry e in waitingEntries)
// 			{
// 				Enqueue(e);
// 			}
// 		}
// 		else
// 		{
// 			entry.scene_id = scene_id;
// 			entry.AddFloat("fps", 1.0f/Time.deltaTime);
// 			if(LogAPI.instance.Enqueue(entry))
// 			{
// 				StartCoroutine(LogAPI.instance.Flush());
// 			}
// 		}
// 	}


// 	void Update()
// 	{
// 		if(Input.GetKeyDown("f2"))
// 		{
// 			if(LogAPI.instance.flushing == false && LogAPI.instance.Enqueued() > 0)
// 			{
// 				StartCoroutine(LogAPI.instance.Flush());
// 			}
			
// 		}
// 	}

	
// 	void OnApplicationQuit()
// 	{
// 		print("OnApplicationQuit");
// 		int retries = 10;

// 		// Figure out how to to clean this up properly!! ARGGH
// 		(new Thread(new ThreadStart(() => {
// 			// IEnumerable e = LogAPI.instance.Flush().GetEnumerator();
// 			// foreach(object obj in LogAPI.instance.Flush())
// 			// {
// 			// 	// while(www.isDone == false);
// 			// 	// Debug.Log("Flush done");
// 			// }
// 		}))).Start();

// 		while(LogAPI.instance.Enqueued() > 0 && retries-- > 0)
// 		{
// 			StartCoroutine(LogAPI.instance.Flush());
// 		}

// 		StartCoroutine(LogAPI.instance.StopSession());
// 		retries = 10;
		
// 		StopAllCoroutines();
// 	}

// }