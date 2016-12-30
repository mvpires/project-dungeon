using UnityEngine;
using System.Collections;
[RequireComponent(typeof(AudioSource))]
public class footsteps : MonoBehaviour {

	public LayerMask mask;
	public float range = 0.1f;
	public AudioClip[] footsounds;  
	public float pitchfactor = 0.2f;

	private AudioSource audioSource;
	private bool didhitfloor;

	void Awake () 
	{
		audioSource = GetComponent<AudioSource>();
	}

	void FixedUpdate()
	{




		Ray ray = new Ray (transform.position,Vector3.down);
		RaycastHit hit = new RaycastHit();


		if (Physics.Raycast(ray,out hit, range,mask))
		{  
			if (!didhitfloor)
			{
				int n = Random.Range(1,footsounds.Length);
				audioSource.clip = footsounds[n];
				audioSource.pitch = (1f-pitchfactor) + (pitchfactor) * Random.value;
				audioSource.PlayOneShot(audioSource.clip);

				footsounds[n] = footsounds[0];
				footsounds[0] = audioSource.clip;

				didhitfloor = true;

			}



		}
		else
		{ 
			didhitfloor = false;
		}




	}

}
