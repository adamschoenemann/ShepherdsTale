using UnityEngine;
using System.Collections;

public class QTHandler : MonoBehaviour {

	public int nodeSize = 100;
	public float nodesPerSecond = 1.0f;
	public TextAsset qteList;

	QTStream stream;

	// Use this for initialization
	void Start () {
		stream = new QTStream(qteList, nodesPerSecond, nodeSize);
	}
	
	// Update is called once per frame
	void Update () {
		stream.Update();
	}

	void OnGUI()
	{
		stream.Draw(Screen.width/2, Screen.height - (nodeSize/2 + 10));
	}
}
