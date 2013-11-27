using UnityEngine;

class Loggable : MonoBehaviour
{

	public string name;

	void Awake()
	{
		Logger logger = 
			GameObject.FindWithTag(Tags.logger).GetComponent<Logger>();
		
	}

}