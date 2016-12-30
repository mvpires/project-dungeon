using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class simplecontroller : MonoBehaviour {


	public Transform mycamera;
	private Transform reference;

	public float jumpHeight = 2.0f;
	public float jumpinterval = 1.5f;
	private float nextjump = 1.2f;
	private float maxhitpoints = 1000f;
	private float hitpoints = 1000f;
	public float regen = 100f;

	public AudioClip[] hurtsounds;
	public AudioClip[] jumpsounds;
	public AudioClip[] attacksounds;


	public float gravity = 20.0f;
	public float rotatespeed = 4.0f;
	private float wantedrotatespeed;
	public float normalspeed = 4.0f;
	public float runspeed = 8.0f;

	public float dampTime = 2.0f;

	private bool isattack;


	public Transform target;
	private float moveAmount;
	public float smoothSpeed = 2.0f;

	private Vector3 forward = Vector3.forward;
	private Vector3 moveDirection = Vector3.zero;
	private Vector3 right;

	private float movespeed;
	public Vector3 localvelocity;

	public bool running = false;
	public bool canrun = true;

	AudioSource myaudiosource;

	Vector3 targetDirection = Vector3.zero;

	Vector3 targetVelocity;
	public GameObject impactprefab;
	public LayerMask mask;
	public float rayfiredelay = 0.35f;
	public float force = 1000f;
	public float damage = 50f;
	public Transform Deadprefab;
	Animator animator;
	CharacterController controller;
	Quaternion oldrotation;
	Quaternion currentrotation;

	public int attackanimcount;
	private int prevrandom = 0;
	private float randomattackfloat;
	public Transform shield;
	public Transform weapon;
	public Transform lefthandpos;
	public Transform righthandpos;
	public Transform chestposshield;
	public Transform chestposweapon;
	public AudioClip[] switchsounds;
	public AudioClip[] wooshsounds;

	private float addfloat = 0f;
	private bool fightmodus = false;
	private bool didselect;
	private bool canattack= false;
	private float nextselect;
	private float lastspeed;
	private float speed;
	private bool canjump = true;
	private bool canequip;
	private float lookweight;

	void Awake ()
	{
		
		myaudiosource = GetComponent<AudioSource>();
		myaudiosource.loop = false;
		reference = new GameObject().transform;
		animator = GetComponent<Animator>();
		controller = GetComponent<CharacterController>();

	}


	void Start ()
	{
		Cursor.lockState = CursorLockMode.Locked;
	}

	void Update () 
	{
		
		reference.eulerAngles = new Vector3(0, mycamera.eulerAngles.y, 0);
		forward = reference.forward;
		right = new Vector3(forward.z, 0, -forward.x);
		float hor = Input.GetAxis("Horizontal") * 5f * Time.deltaTime;
		float ver = Input.GetAxis("Vertical") * 5f * Time.deltaTime;




		Vector3 velocity = controller.velocity;
		localvelocity = transform.InverseTransformDirection(velocity);

		bool ismovingforward =localvelocity.z > .5f;

		targetDirection = (hor * right) + (ver * forward);
		targetDirection = targetDirection.normalized;
		targetVelocity = targetDirection;



		if (fightmodus)
		{
			
			if (targetDirection == Vector3.zero) {
				Vector3 localTarget = transform.InverseTransformPoint (target.position);
				addfloat = (Mathf.Atan2 (localTarget.x, localTarget.z));
			} 
			else 
			{
				
				addfloat = 0f;
			}
			if (running)
			{
				if (targetDirection != Vector3.zero)
				{
					lookweight = 0.1f;
					var lookrotation3 = Quaternion.LookRotation(targetDirection,Vector3.up);
					lookrotation3.x = 0;
					lookrotation3.z = 0;
					transform.rotation = Quaternion.Lerp(transform.rotation,lookrotation3,Time.deltaTime * wantedrotatespeed);
				}
				
			} 
			else
			{
				Vector3 relativePos = ( target.transform.position - transform.position);

				Quaternion lookrotation = Quaternion.LookRotation(relativePos,Vector3.up);
				lookrotation.x = 0;
				lookrotation.z = 0;
				lookweight = .5f;
				transform.rotation = Quaternion.Lerp(transform.rotation,lookrotation,Time.deltaTime * wantedrotatespeed);
			}



		}
		else
		{
			addfloat = 0f;
		
			lookweight = 0.1f;
			if (targetDirection != Vector3.zero)
			{
				var lookrotation2 = Quaternion.LookRotation(targetDirection,Vector3.up);
				lookrotation2.x = 0;
				lookrotation2.z = 0;
				transform.rotation = Quaternion.Lerp(transform.rotation,lookrotation2,Time.deltaTime * wantedrotatespeed);
			}
		
		}


		if (Input.GetButtonDown("Fire3") && Time.time > nextselect && canequip)
		{

			StartCoroutine (weaponselect ());
			nextselect = Time.time + 2f;
		}

		if (canattack && controller.isGrounded)
		{
			bool attackState = animator.GetCurrentAnimatorStateInfo(1).IsName("attacks");
			if (attackState) {
				canjump = false;

				//animator.applyRootMotion = true;
			} 
			else
			{
				canjump = true;

				//animator.applyRootMotion = false;
			}
			if (Input.GetButtonDown("Fire1"))
			{
				
				if (!attackState) 
				{
					StartCoroutine(raycastattack());
					int randomattack = randomIntExcept (0, attackanimcount, prevrandom);


					randomattackfloat = randomattack * 1.0f; 
					animator.SetBool ("attack", true);
					animator.SetFloat ("random", randomattackfloat);


					int n = Random.Range (1, attacksounds.Length);
					myaudiosource.clip = attacksounds [n];
					myaudiosource.pitch = 0.9f + 0.1f * Random.value;
					myaudiosource.Play ();
					attacksounds [n] = attacksounds [0];
					attacksounds [0] = myaudiosource.clip;
					prevrandom = randomattack;

				}

			}
			else
			{
				animator.SetBool("attack",false);

			}
		}
	
		if (controller.isGrounded) 
		{
			canequip = true;
			lastspeed = Mathf.Lerp(lastspeed,speed,Time.deltaTime * 3f);
			if (Input.GetButton ("Jump") && canjump && Time.time > nextjump)
			{
				nextjump = Time.time + jumpinterval;
				moveDirection.y = jumpHeight;
				animator.SetBool ("jump", true);	

				if (!myaudiosource.isPlaying)
				{

					int n = Random.Range(1,jumpsounds.Length);
					myaudiosource.clip =jumpsounds[n];
					myaudiosource.pitch = 0.9f + 0.1f *Random.value;
					myaudiosource.Play();
					jumpsounds[n] = jumpsounds[0];
					jumpsounds[0] = myaudiosource.clip;
				}
			} 

		}

		else 
		{
			canequip = false;
			moveDirection.y -= (gravity) * Time.deltaTime;
			nextjump = Time.time + jumpinterval;
			animator.SetBool ("jump",false);	

		}

		if (Input.GetButton ("Fire2") && canrun && ismovingforward) 
		{
			speed = runspeed;
			running = true;
			wantedrotatespeed = rotatespeed;
		}
		else 
		{
			speed = normalspeed;
			running = false;
			wantedrotatespeed = rotatespeed;

		}
		targetVelocity *= lastspeed;
		moveDirection.z = targetVelocity.z;
		moveDirection.x = targetVelocity.x;



		animator.SetFloat("hor",((localvelocity.x/normalspeed) + addfloat), dampTime , 0.8f);
		animator.SetFloat("ver",((localvelocity.z/normalspeed)), dampTime , 0.8f);
		if (hitpoints <= 0)
		{
			//die
			Instantiate(Deadprefab, transform.position, transform.rotation);
			Destroy(gameObject);
		}

		animator.SetBool("grounded",controller.isGrounded);	 
		controller.Move (moveDirection * Time.deltaTime);


		if (hitpoints < maxhitpoints)
			hitpoints += regen * Time.deltaTime;
		

	}
	void Damage (float damage) 
	{



		if (!myaudiosource.isPlaying && hitpoints >= 0)
		{

			int n = Random.Range(1,hurtsounds.Length);
			myaudiosource.clip = hurtsounds[n];
			myaudiosource.pitch = 0.9f + 0.1f *Random.value;
			myaudiosource.Play();
			hurtsounds[n] = hurtsounds[0];
			hurtsounds[0] = myaudiosource.clip;
		}
		//damaged = true;
		//myAudioSource.PlayOneShot(hurtsound);
		hitpoints = hitpoints - damage;
	}

	IEnumerator equip()
	{
		yield return new WaitForSeconds(.42f);
		weapon.parent = righthandpos;
		weapon.position = righthandpos.position;
		weapon.rotation = righthandpos.rotation;

		int n = Random.Range(1,switchsounds.Length);
		myaudiosource.clip = switchsounds[n];
		myaudiosource.pitch = 0.9f + 0.1f *Random.value;
		myaudiosource.Play();
		switchsounds[n] = switchsounds[0];
		switchsounds[0] = myaudiosource.clip;


		shield.parent = lefthandpos;
		shield.position = lefthandpos.position;
		shield.rotation = lefthandpos.rotation;



	}
	IEnumerator raycastattack()
	{
		yield return new WaitForSeconds(rayfiredelay);
		Vector3 fwrd = mycamera.transform.forward;

		Vector3 camUp = mycamera.transform.up;
		Vector3 camRight = mycamera.transform.right;

		Vector3 wantedvector = fwrd;
		wantedvector += Random.Range( -.1f, .1f ) * camUp + Random.Range( -.1f, .1f ) * camRight;

		Ray ray = new Ray (transform.position + Vector3.up,wantedvector);
		RaycastHit hit = new RaycastHit();

		if (Physics.Raycast(ray,out hit, 3f,mask))
		{   

			if(hit.rigidbody) hit.rigidbody.AddForceAtPosition (force * fwrd , hit.point);
			hit.transform.SendMessageUpwards ("Damage",damage, SendMessageOptions.DontRequireReceiver);
			GameObject decal;

			decal = Instantiate(impactprefab, hit.point, Quaternion.FromToRotation(Vector3.up, hit.normal)) as GameObject ;
			decal.transform.localRotation = decal.transform.localRotation * Quaternion.Euler(0f,Random.Range(-90f,90f),0f);
		}


	}
	IEnumerator holster()
	{
		yield return new WaitForSeconds(.3f);
		shield.parent = chestposshield;
		shield.position = chestposshield.position;
		shield.rotation = chestposshield.rotation;

		int n = Random.Range(1,switchsounds.Length);
		myaudiosource.clip = switchsounds[n];
		myaudiosource.pitch = 0.9f + 0.1f *Random.value;
		myaudiosource.Play();
		switchsounds[n] = switchsounds[0];
		switchsounds[0] = myaudiosource.clip;


		weapon.parent = chestposweapon;
		weapon.position = chestposweapon.position;
		weapon.rotation = chestposweapon.rotation;


	}

	IEnumerator weaponselect()
	{	


		if (didselect) {
			
			animator.CrossFade ("Holster", 0.1f, 1, 0f);
			StartCoroutine (holster());
			canattack = false;
			didselect = false;

			animator.SetBool ("equip", false);
			yield return new WaitForSeconds (.2f);
			fightmodus = false;

		} else {

			animator.CrossFade ("Equip", 0.1f, 1, 0f);
			StartCoroutine (equip());
			didselect = true;
			fightmodus = true;
			animator.SetBool ("equip", true);
			yield return new WaitForSeconds (.2f);
			canattack = true;
		}
	}
	void OnAnimatorIK()
	{
		animator.SetLookAtPosition (target.transform.position);
		animator.SetLookAtWeight (lookweight, 0.7f, 1f, 1f);
	}
	private int randomIntExcept( int min, int max, int except )
	{
		int result = Random.Range( min, max-1 );
		if (result >= except) result += 1;
		return result;
	}

}

