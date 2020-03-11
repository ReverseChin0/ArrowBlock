using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SCR_Flecha_normal : SCR_Flecha
{
    private void Start()
    {
        Inicializar();
    }

    protected override void EjecutarEfectoColision()
    {
        print("PiUM");
    }

    protected override void HacerDanio()
    {
        print("10 de daño");
    }

    protected override void Inicializar()
    {
        print("Soy la flecha normal");
    }

}
