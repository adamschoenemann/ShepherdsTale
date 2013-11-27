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
		private set {_sessionClosed = value;}
	}

	private List<GameObject> objects;

	// ----------------------------- Methods -------------------------

	private LogAPI()
	{
		Debug.Log("New LogAPI created");
		session_id = 0;
	}

	/**
	 * Starts a new session server-side
	 */
	public IEnumerator StartSession(List<GameObject> gObjs)
	{
		if(session_id != 0)
		{
			return false;
		}

		objects = gObjs;
		WWWForm form = new WWWForm();
		form.AddField("app_version", "1");
		int i = 0;
		foreach(GameObject obj in objects)
		{
			string field = "gameobjects[" + i + "]";
			form.AddField(field + "[instance_id]", obj.GetInstanceID());
			form.AddField(field + "[name]", obj.name);
			form.AddField(field + "[tag]", obj.tag);
			i++;
		}

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

	public void Log(MonoBehaviour context, string eventName = "none")
	{
		try
		{
			Debug.Log("Logging... " + objects);
			foreach(GameObject obj in objects){
				if(obj == null)
				{
					Debug.Log("Logging null object");
					continue;
				}
				context.StartCoroutine(LogGameObject(obj, eventName));
			}
			return;
		}
		catch(NullReferenceException e)
		{
			Debug.Log(e);
		}
	}

	/**
	 * Begins logging all the registered gameobjects
	 * @type {String}
	 */
	public IEnumerator StartLogging(MonoBehaviour context, string eventName = "none")
	{
		while(true)
		{
			if(session_id == 0) // Wait with logging till we've got an id
			{
				yield return true;
			}
			Log(context, eventName);
			yield return new WaitForSeconds(logRate);
		}
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