using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SCR_Impacts : MonoBehaviour
{
    public SCR_Flecha ultimaflecha;
    public MeshRenderer escudo;
    public Gamemanager scr_gamemanger;
    [SerializeField]
    float duracion = 0.4f;
    float valorT = 0;
    float delta;
  
    private void OnCollisionEnter(Collision collision)
    {
        
        ultimaflecha = collision.collider.GetComponent<SCR_Flecha>();
        ultimaflecha.Ataque();
        scr_gamemanger.PutMoreValueToScore(ultimaflecha.scoreExtra);
        Vector3 normal = collision.contacts[0].normal;

        ultimaflecha.Colision(normal);
        StartCoroutine(efecto());
    }


    public IEnumerator efecto()
    {
        float nduracion = duracion * 0.5f;
        delta = 1 / nduracion;
        while (valorT < 1.0f) 
        {
            valorT += delta * Time.deltaTime;
            if (valorT >= 1.0f)
                valorT = 1.0f;
            float v = Mathf.Lerp(0, 5, valorT);
            escudo.material.SetFloat("_RimIntensity", v);
            yield return null;
        }
        valorT = 0;
        while (valorT < 1.0f)
        {
            valorT += delta * Time.deltaTime;
            if (valorT >= 1.0f)
                valorT = 1.0f;
            float v = Mathf.Lerp(5, 0, valorT);
            escudo.material.SetFloat("_RimIntensity", v);
            yield return null;
        }
    }
}
