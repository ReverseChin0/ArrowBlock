using UnityEngine;

public abstract class SCR_Flecha : MonoBehaviour
{
    public void Inicio()
    {
        Inicializar();
    }

    public void Ataque()
    {
        HacerDanio();
    }

    public void Colision()
    {
        EjecutarEfectoColision();
    }

    protected abstract void HacerDanio();
    protected abstract void EjecutarEfectoColision();
    protected abstract void Inicializar();
}
