using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SCR_Impacts : MonoBehaviour
{
    public SCR_Flecha ultimaflecha;

    private void OnCollisionEnter(Collision collision)
    {
        ultimaflecha = collision.collider.GetComponent<SCR_Flecha>();
        ultimaflecha.Ataque();
        ultimaflecha.Colision();
    }
}
