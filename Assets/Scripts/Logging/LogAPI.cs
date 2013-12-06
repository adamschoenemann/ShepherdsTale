using UnityEngine;
using System;
using System.Threading;
using System.Collections;
using System.Collections.Generic;

public class LogAPI {

	const string host = "http://www.adamschoenemann.dk/api/log";

	public int session_id {get; private set;}
	public float logRate = 0.5f;
	public bool flushing {private set; get;}

	private static LogAPI _instance;

	public static LogAPI instance
	{
		private set { _instance = value; }
		get
		{
			if(_instance == null)
			{
				_instance = new LogAPI();
			}
			return _instance;
		}
	}

	private bool _sessionClosed = false;
	public bool sessionClosed
	{
		get {return _sessionClosed;}
		private set { _sessionClosed = value; }
	}

	private const int size = 10;
	private Queue<LogEntry> entryQueue = new Queue<LogEntry>(size);

	// ----------------------------- Methods -------------------------

	private LogAPI()
	{
		Debug.Log("New LogAPI created");
		session_id = 0;
		flushing = false;
	}

	public IEnumerator RegisterLoggable(Loggable l, Logger logger, Action<int> cb = null)
	{
		while(session_id == 0)
		{
			yield return true;
		}

		while(logger.scene_id == 0)
		{
			yield return true;
		}

		WWWForm form = new WWWForm();
		form.AddField("name", l.name);
		form.AddField("scene_id", logger.scene_id);

		int retries = 5;
		WWW www = new WWW(host + "/register_loggable", form);
		yield return www;
		while(String.IsNullOrEmpty(www.error) == false && retries-- > 0)
		{
			Debug.Log("Retrying...");
			www = new WWW(host + "/register_loggable", form);
			yield return www;
		}

		JSONObject json = HandleResponse(www);
		Debug.Log("Registered: " + json.ToString());
		if(cb != null)
		{
			cb((int) json[0]["id"].n);
		}
	}

	public bool Enqueue(LogEntry e)
	{
		e.session_id = session_id;
		entryQueue.Enqueue(e);
		Debug.Log("Enqueue");
		if(entryQueue.Count >= size)
		{
			return true;
		}
		return false;
	}

	public int Enqueued()
	{
		return entryQueue.Count;
	}

	public IEnumerator Flush()
	{
		if(Enqueued() <= 0 || flushing)
			yield return false;
		
		Debug.Log("Flushing...");
		flushing = true;
		WWWForm form = new WWWForm();
		LogEntry[] entries = new LogEntry[entryQueue.Count];
		entryQueue.CopyTo(entries, 0);
		entryQueue.Clear();
		for(int i = 0; i < entries.Length; i++)
		{
			LogEntry e = entries[i];
			e.ToForm(form, i);
		}
		
		WWW www = LogEntries(form);
		yield return www;
		JSONObject json = HandleResponse(www);
		Debug.Log("Entry post: " + json.ToString());
		flushing = false;
	}

	
	private WWW LogEntries(WWWForm form)
	{
		WWW www = new WWW(host + "/batch_entries", form);
		return www;
	}

	public IEnumerator RegisterScene(String name, Logger logger, Action<int> cb = null)
	{
		while(session_id == 0)
		{
			yield return true;
		}

		if(logger.scene_id != 0)
		{
			Debug.Log("I want to close the current scene");
			yield return logger.StartCoroutine(CloseScene(logger));
		}

		Debug.Log("Registering scene");
		WWWForm form = new WWWForm();
		form.AddField("session_id", session_id);
		form.AddField("name", name);
		form.AddField("time", logger.time.ToString());

		WWW www = new WWW(host + "/register_scene", form);
		yield return www;
		
		JSONObject json = HandleResponse(www);
		if(cb != null)
		{
			int scene_id = (int) json[0]["id"].n;
			cb(scene_id);
		}
	}

	private JSONObject HandleResponse(WWW www)
	{
		if(String.IsNullOrEmpty(www.error) == false){
			Debug.Log("url: "+ www.url + "\nerror: " + www.error);
		}

		JSONObject json = new JSONObject(www.text);
		return json;
	}

	// Still not working
	public IEnumerator CloseScene(Logger logger, Action cb = null)
	{
		string url = host + "/close_scene/";
		WWWForm form = new WWWForm();
		form.AddField("id", logger.scene_id);
		WWW www = new WWW(url, form);
		yield return www;
		HandleResponse(www);
		if(cb != null)
		{
			while(flushing) yield return true;
			cb();
		}
	}

	/**
	 * Starts a new session server-side
	 */
	public IEnumerator StartSession()
	{
		if(session_id != 0)
		{
			yield return false;
		}

		WWWForm form = new WWWForm();
		form.AddField("app_version", "1");	
		form.AddField("MAC", Utils.GetMacAddress());

		WWW www = new WWW(host + "/start_session", form);
		yield return www;

		JSONObject json = HandleResponse(www);
		session_id = (int) json[0]["id"].n;
		Debug.Log(json[0]["id"]);

	}

	public bool IsDry()
	{
		return (session_id == 0);
	}

	public IEnumerator StopSession(){
		WWWForm form = new WWWForm();
		form.AddField("id", session_id);
		WWW www = new WWW(host + "/stop_session", form);
		yield return www;
		sessionClosed = true;

		Debug.Log("session finished: " + www.text);
	}


}
