using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

public class LogAPI {

	const string host = "http://localhost/shepherd_log/api/log";

	public int session_id {get; private set;}
	public float logRate = 0.5f;

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

	private const int size = 40;
	private Queue<LogEntry> entryQueue = new Queue<LogEntry>(size);

	// ----------------------------- Methods -------------------------

	private LogAPI()
	{
		Debug.Log("New LogAPI created");
		session_id = 0;
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

		WWW www = new WWW(host + "/register_loggable", form);
		yield return www;
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
		if(entryQueue.Count >= size - 1)
		{
			return true;
		}
		return false;
	}

	public IEnumerator Flush()
	{
		Debug.Log("Flushing...");
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
			Debug.Log("error: " + www.error);
		}

		JSONObject json = new JSONObject(www.text);
		return json;
	}

	// Still not working
	public IEnumerator CloseScene(Logger logger)
	{
		string url = host + "/close_scene/";
		WWWForm form = new WWWForm();
		form.AddField("id", logger.scene_id);
		WWW www = new WWW(url, form);
		yield return www;
		HandleResponse(www);
	}

	/**
	 * Starts a new session server-side
	 */
	public IEnumerator StartSession()
	{
		if(session_id != 0)
		{
			return false;
		}

		WWWForm form = new WWWForm();
		form.AddField("app_version", "1");	

		WWW www = new WWW(host + "/start_session", form);
		yield return www;

		if(String.IsNullOrEmpty(www.error) == false){
			Debug.Log("error: " + www.error);
		}

		JSONObject json = new JSONObject(www.text);
		session_id = (int) json[0]["id"].n;
		Debug.Log(json[0]["id"]);

	}

	public bool IsDry()
	{
		return (session_id == 0);
	}

	
	private IEnumerator LogGameObject(GameObject obj, string eventName)
	{
		WWWForm form = new WWWForm();

		form.AddField("session_id", session_id.ToString());
		form.AddField("instance_id", obj.GetInstanceID().ToString());
		form.AddField("event", eventName);

		Vector3 p = obj.transform.position;
		form.AddField("position[x]", p.x.ToString());
		form.AddField("position[y]", p.y.ToString());
		form.AddField("position[z]", p.z.ToString());

		Quaternion q = obj.transform.rotation;
		form.AddField("rotation[x]", q.x.ToString());
		form.AddField("rotation[y]", q.y.ToString());
		form.AddField("rotation[z]", q.z.ToString());
		form.AddField("rotation[w]", q.w.ToString());

		WWW www = new WWW(host + "/log_object", form);
		yield return www;
		if(!String.IsNullOrEmpty(www.error)){
			Debug.Log(www.error);
			return false;
		}
		Debug.Log(www.text);
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