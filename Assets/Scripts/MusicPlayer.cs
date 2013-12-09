using UnityEngine;
using System.Collections;

public class MusicPlayer : MonoBehaviour {

	public AudioSource track;

	// Use this for initialization
	void Start () {
		if(track)
			track.Play();
	}
}
