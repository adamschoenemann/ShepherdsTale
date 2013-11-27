using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

public class LogEntry
{

	private List<GameObject> gameObjects;
	private List<string> strings;
	private List<int> ints;
	private List<float> floats;

	public int scene_id;
	public int session_id; // TODO: REMOVE THIS, NOT USED SINCE WE HAVE scene_id

	public void AddGameObject(GameObject go)
	{
		if(gameObjects == null)
			gameObjects = new List<GameObject>();
		gameObjects.Add(go);
	}

	// TODO: Maybe ref form?
	public void ToForm(WWWForm form, int i)
	{
		if(session_id == 0 || scene_id == 0)
		{
			Debug.Log("Logging invalid Entry!!!!!");
			return;
		}
		string entryKey = "entries[" + i + "]";
		form.AddField(entryKey + "[session_id]", session_id);
		form.AddField(entryKey + "[scene_id]", scene_id);

		// GameObjects
		if(gameObjects != null)
		{
			string goKey = entryKey + "gameObject";
			for(int j = 0; j < gameObjects.Count; j++)
			{
				string k = goKey + "[" + j + "]";
				GameObject go = gameObjects[j];
				form.AddField(k + "[name]", go.name);
				form.AddField(k + "[instance_id]", go.GetInstanceID());
				form.AddField(k + "[position]", "position");
				form.AddField(k + "[rotation]", "position");
			}
		}

		Debug.Log("Entry converted to form");

		// // Strings
		// if(strings != null)
		// {
		// 	string strKey = entryKey + "strings";
		// 	for(int j = 0; j < strings.Count; j++)
		// 	{
		// 		string k = strKey + "[" + j + "]";
		// 		string s = strings[j];
		// 		// form.AddField(k + "[key]", )
		// 	}
		// }
	}

}