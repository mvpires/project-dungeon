using UnityEngine;
using System.Collections;

public class EnemyBehavior : MonoBehaviour
{

    Animation mAnimation;

    // Use this for initialization
    void Start()
    {

    }

    void Awake()
    {
        mAnimation = GetComponent<Animation>();

        if (tag.Equals("Skeleton"))
        {
            mAnimation["Idle"].layer = 1;
            mAnimation["Walk"].layer = 1;
        }

    }

    // Update is called once per frame
    void Update()
    {

    }
}
