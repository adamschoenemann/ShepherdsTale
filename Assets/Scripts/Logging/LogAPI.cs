using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

public class LogAPI {

	const string host = "http://localhost/shepherd_log/api/log";

	public int session_id {get; private set;}
	public int scene_id {get; private set;}
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
		private set {_sessionClosed = value;}
	}

	private const int size = 4;
	private Queue<LogEntry> entryQueue = new Queue<LogEntry>(size);

	// ----------------------------- Methods -------------------------

	private LogAPI()
	{
		Debug.Log("New LogAPI created");
		session_id = 0;
		scene_id = 0;
	}

	public void Enqueue(LogEntry e, MonoBehaviour context)
	{
		e.session_id = session_id;
		e.scene_id = scene_id;
		entryQueue.Enqueue(e);
		if(entryQueue.Count >= size - 1)
		{
			Flush(context);
		}
	}

	public void Flush(MonoBehaviour context)
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
		
		context.StartCoroutine(LogEntries(form));
	}

	public IEnumerator LogEntries(WWWForm form)
	{
		WWW www = new WWW(host + "/batch_entries", form);
		yield return www;
		JSONObject json = HandleResponse(www);
		Debug.Log("Entry post: " + json.ToString());
	}

	public IEnumerator RegisterScene(String name, MonoBehaviour context)
	{
		while(session_id == 0)
		{
			yield return true;
		}

		if(scene_id != 0)
		{
			Debug.Log("I want to close the current scene");
			yield return context.StartCoroutine(CloseScene());
		}

		Debug.Log("Registering scene");
		WWWForm form = new WWWForm();
		form.AddField("session_id", session_id);
		form.AddField("name", name);

		WWW www = new WWW(host + "/register_scene", form);
		yield return www;
		
		JSONObject json = HandleResponse(www);
		scene_id = (int) json[0]["id"].n;
		Debug.Log(json[0]["id"]);
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
	public IEnumerator CloseScene()
	{
		string url = host + "/close_scene/";
		WWWForm form = new WWWForm();
		form.AddField("id", scene_id);
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

	// private IEnumerator
	// LogEntry(LogEntry entry, string endpoint, Func<WWW, void> onDone = null)
	// {
	// 	WWWForm form = entry.ToForm();
	// 	WWW www = new WWW(host + endpoint, form);
	// 	yield return www;
	// 	if(onDone != null)
	// 	{
	// 		onDone(www);
	// 	}

	// }

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