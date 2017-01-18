using UnityEngine;
using System.Collections;

public class PlayerBehavior : MonoBehaviour {

    private Animation mAnimation;
    public bool mMoveLeft;
    public bool mMoveRight;
    public bool mIsAttacking;
    public bool mIsDefending;
    public bool mTurnedLeft;
    public bool mTurnedRight;
    public float mSpeed;
    private CharacterController mCharacterController;
 

    void Awake()
    {
        mMoveLeft = false;
        mMoveRight = false;
        mIsAttacking = false;
        mIsDefending = false;

        mTurnedRight = true;
        mTurnedLeft = false;
        mSpeed = 16f;

        mAnimation = GetComponent<Animation>();
        mCharacterController = GetComponent<CharacterController>();

            mAnimation["Wait"].layer = 1;
            mAnimation["Wait"].wrapMode = WrapMode.Loop;
            mAnimation["Walk"].layer = 1;
            mAnimation["Attack"].layer = 1;

        mAnimation.CrossFade("Wait");

    }

    // Use this for initialization
    void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {

        if(mMoveLeft)
        {
            mCharacterController.Move(-Vector3.right * mSpeed * Time.deltaTime);
            mAnimation.CrossFade("Walk");
            mAnimation["Walk"].speed = 2F;
        }
        else if (mMoveRight)
        {
            mCharacterController.Move(Vector3.right * mSpeed * Time.deltaTime);
            mAnimation.CrossFade("Walk");
            mAnimation["Walk"].speed = 2F;
        }

        if (mIsAttacking)
        {
            Debug.Log("PUUURGE");
            mAnimation.Play("Attack");
            mAnimation["Attack"].speed = 1F;

        }


    }

    public void Attack()
    {
        mIsAttacking = true;
        
    }

    public void Defend()
    {
        mIsDefending = true;
    }

    public void MoveLeft()
    {
        mTurnedRight = false;

        if(!mTurnedLeft)
        {
            Debug.Log("Left");
            gameObject.transform.Rotate(0f, -180f, 0f);
            mTurnedLeft = true;
        }
        
        
        mMoveLeft = true;
    }

    public void MoveRight()
    {
        mTurnedLeft = false;

        if (!mTurnedRight)
        {
            Debug.Log("Right");
            gameObject.transform.Rotate(0f, 180f, 0f);
            mTurnedRight = true;
        }

        mMoveRight = true;
    }

    public void RightButtonUp()
    {
        mAnimation.CrossFade("Wait");
        mMoveRight = false;
    }

    public void LeftButtonUp()
    {
        mAnimation.CrossFade("Wait");
        mMoveLeft = false;
    }

    public void AttackButtonUp()
    {
        mIsAttacking = false;
        Debug.Log("Not Attacking");
    }

    public void DefenseButtonUp()
    {
        mIsDefending = false;
    }
}
