using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SCR_Impacts : MonoBehaviour
{
    public SCR_Flecha ultimaflecha;
    public MeshRenderer escudo;
    [SerializeField]
    float duracion = 0.4f;
    float valorT = 0;
    float delta;
    //TEST==============
    Vector3 expnormal=Vector3.zero;
    Vector2 circle;
    //TEST==============
    private void OnCollisionEnter(Collision collision)
    {
        ultimaflecha = collision.collider.GetComponent<SCR_Flecha>();
        ultimaflecha.Ataque();
        Vector3 normal = collision.contacts[0].normal;
        //TEST=======================
        expnormal = -normal;
        circle = Random.insideUnitCircle*0.8f;
        Debug.Log(expnormal);
        
        Debug.DrawRay(transform.position, expnormal + new Vector3(circle.x, 0, circle.y), Color.red,2.0f);
        //TEST====================
        ultimaflecha.Colision(normal);
        StartCoroutine(efecto());
    }

    private void OnDrawGizmos()
    {
        Gizmos.DrawWireSphere(expnormal*2,0.8f);
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
