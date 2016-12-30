using UnityEngine;
using System.Collections;

public class randomEmissive : MonoBehaviour {

	public float minIntensity = 0.1f;
	public float maxIntensity = 1f;

	private Material mymaterial;
	private Renderer myrenderer;
	private float randomintensity;
	public Color emissivecolor;

	void Start()
	{
		randomintensity = (Random.Range (0.0f,6f));
		myrenderer = GetComponent<Renderer>();

	}
	void Update()
	{
		float noise = Mathf.PerlinNoise(randomintensity,Time.time);
		mymaterial = myrenderer.material;
		Color wantedcolor = emissivecolor * Mathf.LinearToGammaSpace(Mathf.Lerp(minIntensity,maxIntensity,noise));
		mymaterial.SetColor("_EmissionColor",wantedcolor);
	}





}

