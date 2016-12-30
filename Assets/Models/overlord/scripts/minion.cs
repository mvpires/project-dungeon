using UnityEngine;
using System.Collections;

public class minion : MonoBehaviour {

	public float wanderRadius;
	public float wanderTimer;
	public float hitpoints = 100f;
	public Transform spawnobject;
	private Transform target;
	private NavMeshAgent agent;
	public float walkspeed = 2f;
	public float runspeed = 5f;
	private float timer;
	private Animator animator;
	private GameObject player;
	public float viewangle = 60f;
	public float viewdistance = 20f;
	public float attackdistance = 1.5f;
	private AudioSource myaudio;
	public AudioClip[] hurtSounds; 
	private float oldhitpoints;
	public LayerMask mask;

	void OnEnable () {
		agent = GetComponent<NavMeshAgent> ();
		timer = wanderTimer;
		animator = transform.GetComponent<Animator>();
		player = GameObject.FindGameObjectWithTag("Player");
		myaudio = GetComponent<AudioSource>();
		oldhitpoints = hitpoints;
	}

	// Update is called once per frame
	void Update () 
	{
		Vector3 velocity = agent.velocity;

		//Vector3 localvelocity = transform.InverseTransformDirection(velocity);
		//animator.SetFloat("ver",localvelocity.z);
		animator.SetFloat("speed",velocity.magnitude);
		if (oldhitpoints != hitpoints)
		{
			animator.SetBool("gethit", true);
			oldhitpoints = hitpoints;
		}
		else
		{
			animator.SetBool("gethit", false);
		}
		if (hitpoints <= 0)
		{
			Instantiate(spawnobject, transform.position, transform.rotation);
			Vector3 explosionPos = transform.position;
			Collider[] colliders = Physics.OverlapSphere(explosionPos, 5f);
			foreach (Collider hit in colliders) 
			{
				if (hit.GetComponent<Rigidbody>() != null)
				{
					Rigidbody rb = hit.GetComponent<Rigidbody>();
					rb.AddExplosionForce(250f, explosionPos, 5f, 3.0f);

				}
			}
			Destroy (gameObject);
		}
		else
		{
			

			if (player != null)
			{
				Vector3 targetDir =( player.transform.position + new Vector3(0f,.3f,0f)) - transform.position;
				Vector3 forward = transform.forward;
				float angle = Vector3.Angle(targetDir, forward);


				if (angle < viewangle && targetDir.magnitude <= viewdistance )
				{
					Ray ray = new Ray (transform.position, targetDir);
					RaycastHit hit = new RaycastHit();
					Debug.DrawRay(transform.position, targetDir, Color.green);
					if (Physics.Raycast(ray,out hit, viewdistance,mask))
					{
						if (hit.transform.tag == "Player") 
						{
							agent.speed = runspeed;
							agent.SetDestination(player.transform.position);
							if (targetDir.magnitude <= attackdistance)
							{
								Quaternion wantedrotation = Quaternion.LookRotation(targetDir.normalized,Vector3.up);
								transform.rotation = Quaternion.Lerp(transform.rotation,wantedrotation,Time.deltaTime * 8f);
								animator.SetBool("attack", true);
							}
							else
							{
								animator.SetBool("attack", false);
							}
						}
						else
						{
							animator.SetBool("attack", false);
						}
					}



				}

				else
				{
					animator.SetBool("attack", false);
					timer += Time.deltaTime;
					agent.speed = walkspeed;
					if (timer >= wanderTimer) {
					Vector3 newPos = RandomNavSphere(transform.position, wanderRadius, -1);
					agent.SetDestination(newPos);
					timer = 0;

					}
				}


			}
			else
			{
				animator.SetBool("attack", false);
				timer += Time.deltaTime;
				agent.speed = walkspeed;
				if (timer >= wanderTimer) 
				{
					Vector3 newPos = RandomNavSphere(transform.position, wanderRadius, -1);
					agent.SetDestination(newPos);
					timer = 0;
				}
			}
		
		
		}
		
	}

	public static Vector3 RandomNavSphere(Vector3 origin, float dist, int layermask) {
		Vector3 randDirection = Random.insideUnitSphere * dist;

		randDirection += origin;

		NavMeshHit navHit;

		NavMesh.SamplePosition (randDirection, out navHit, dist, layermask);

		return navHit.position;
	}
	void Damage (float damage) 
	{

		if (!myaudio.isPlaying && hitpoints >= 0)
		{
			
			int n = Random.Range(1,hurtSounds.Length);
			myaudio.clip = hurtSounds[n];
			myaudio.pitch = 0.9f + 0.1f *Random.value;
			myaudio.Play();
			hurtSounds[n] = hurtSounds[0];
			hurtSounds[0] = myaudio.clip;
		}
		hitpoints = hitpoints - damage;


	}
	void Attack ()
	{
		if (player != null)
		{
			player.transform.SendMessageUpwards ("Damage",50f, SendMessageOptions.DontRequireReceiver);
		}


	}

}

