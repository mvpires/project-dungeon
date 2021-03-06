﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DoorBehavior : MonoBehaviour {
    Animator animator;
    AudioSource audioSource;

	// Use this for initialization
	void Start () {

        animator = GetComponent<Animator>();
        audioSource = GetComponent<AudioSource>();
    }

    public void openDoor()
    {
        animator.SetBool("OpenDoor", true);
        audioSource.Play();
    }

    public void closeDoor()
    {
        animator.SetBool("OpenDoor", false);
    }
}
