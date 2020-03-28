using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SCR_Impacts : MonoBehaviour
{
    public SCR_Flecha ultimaflecha;
    public MeshRenderer escudo;
    [SerializeField]
    Gamemanager scr_gamemanger = default;
    [SerializeField]
    float duracion = 0.4f;
    [SerializeField]
    Animator an;
    float valorT = 0;
    float delta;
  
    private void OnCollisionEnter(Collision collision)
    {
        ultimaflecha = collision.collider.GetComponent<SCR_Flecha>();
        ultimaflecha.Ataque();
        scr_gamemanger.PutMoreValueToScore(ultimaflecha.scoreExtra);
        Vector3 normal = collision.contacts[0].normal;

        SCR_SoundManager.sndinstance.PlaySound(SCR_SoundManager.Sonidos.impacto);
        ultimaflecha.Colision(normal);
        StartCoroutine(efecto());
    }


    public IEnumerator efecto()
    {
        an.SetTrigger("hit");
        float nduracion = duracion * 0.2f;
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
        delta = 1 / duracion;
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
