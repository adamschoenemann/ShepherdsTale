using UnityEngine;
using System.Collections;

public class Example : MonoBehaviour {
    
	public void animationFunction(){
        foreach (AnimationState state in animation) {
            state.speed = 0.1F;
        }
    }
}