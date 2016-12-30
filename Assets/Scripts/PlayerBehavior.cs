using UnityEngine;
using System.Collections;

public class PlayerBehavior : MonoBehaviour {

    private Animation mAnimation;

    void Awake()
    {
        mAnimation = GetComponent<Animation>();

        
            mAnimation["Wait"].layer = 1;
            mAnimation["Wait"].wrapMode = WrapMode.Loop;
            mAnimation["Walk"].layer = 1;

        mAnimation.CrossFade("Wait");

    }

    // Use this for initialization
    void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
