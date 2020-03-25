using UnityEngine;

public abstract class SCR_Flecha : MonoBehaviour
{
    public int scoreExtra = 100;

    public void Inicio()
    {
        Inicializar();
    }

    public void Ataque()
    {
        HacerDanio();
    }

    public void Colision(Vector3 _normal)
    {
        EjecutarEfectoColision(_normal);
    }

    protected abstract void HacerDanio();
    protected abstract void EjecutarEfectoColision(Vector3 _normal);
    protected abstract void Inicializar();
}
