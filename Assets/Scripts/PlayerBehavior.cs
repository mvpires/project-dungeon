using UnityEngine;
using System.Collections;

public class PlayerBehavior : MonoBehaviour {

    private Animation mAnimation;
    public bool mMoveLeft = false;
    public bool mMoveRight = false;
    public bool mIsAttacking = false;
    public bool mIsDefending = false;
    public float mSpeed = 16f;
    private CharacterController mCharacterController;

    void Awake()
    {
        mAnimation = GetComponent<Animation>();
        mCharacterController = GetComponent<CharacterController>();


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

        //if (mIsAttacking)
        //{
        //    mAnimation.Blend("Attack");
        //    mAnimation["Attack"].speed = 2F;

        //}


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
        mMoveLeft = true;
    }

    public void MoveRight()
    {
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
    }

    public void DefenseButtonUp()
    {
        mIsDefending = false;
    }
}
