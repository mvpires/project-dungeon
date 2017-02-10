using UnityEngine;
using System.Collections;

public class GameManager : MonoBehaviour
{

    public static GameManager instance;
    private bool isInAttackRange = false;
    private bool isAttacking = false;

    public static GameManager Instance
    {
        get{
            if(instance == null)
            {
                instance = new GameObject("Game Manager").AddComponent<GameManager>();
            }

            return instance;
        }
    }

    public void OnApplicationQuit()
    {
        instance = null;
    }

    public void SetAttackRangeTrue()
    {
        isInAttackRange = true;
    }

    public void SetAttackRangeFalse()
    {
        isInAttackRange = false;
    }

    public bool IsInAttackRange()
    {
        return isInAttackRange;
    }

    public void setAttackingStatus(bool arg)
    {
        isAttacking = arg;
    }

    public bool checkAttackingStatus()
    {
        return isAttacking;
    }

}
