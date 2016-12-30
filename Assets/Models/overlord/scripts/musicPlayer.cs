using UnityEngine;
using System.Collections;

public class musicPlayer : MonoBehaviour {
	//private AudioSource myaudio;
	public AudioClip[] tensionLoops;   
	private audioFader fader;
	public float musicvolume = 0.5f;
	// Use this for initialization
	void Awake() {
		//myaudio = GetComponent<AudioSource>();
		fader = GetComponent<audioFader>();
	}
	
	// Update is called once per frame
	void Update () 
	{
		if (!fader.IsPlaying)
		{
			int n = Random.Range(1,tensionLoops.Length);


			fader.Fade(tensionLoops[n],musicvolume,false);

			tensionLoops[n] = tensionLoops[0];
			tensionLoops[0] = fader.Clip;
		}
	}
}
