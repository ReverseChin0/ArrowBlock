using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SCR_Flecha_rebote : SCR_Flecha
{
    public float speed = 1.0f;
    private void Start()
    {
        Inicializar();
    }

    protected override void EjecutarEfectoColision(Vector3 _n)
    {
        //print("Shazam");
    }

    protected override void HacerDanio()
    {
        //print("200 de daño jaja");
    }

    protected override void Inicializar()
    {
        //print("Soy la riata");
    }
}
