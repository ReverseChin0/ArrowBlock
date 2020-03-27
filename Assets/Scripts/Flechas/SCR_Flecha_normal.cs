using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SCR_Flecha_normal : SCR_Flecha
{
    public float speed = 1.0f;
    float torque;
    Rigidbody rb;
    Collider col;
    Vector3 velocity;

    [SerializeField]
    TrailRenderer mitrail=default;

    private void Start()
    {
        rb = GetComponent<Rigidbody>();
        col = GetComponent<Collider>();
        Inicializar();
    }

    protected override void EjecutarEfectoColision(Vector3 _n)
    {
        Disappear(_n);
    }

    protected override void HacerDanio()
    {

    }

    protected override void Inicializar()
    {
        col.enabled = true;
        velocity = transform.forward * speed;
        torque = speed * 2;
        rb.velocity = velocity;
        mitrail.enabled = true;
    }

    void Disappear(Vector3 _n) {
        Vector2 circle = Random.insideUnitCircle * 0.8f;
        _n = (-_n * 2) + new Vector3(circle.x, 0, circle.y);
        _n.Normalize();
        rb.velocity = _n * speed;
        rb.AddTorque(0.0f, 100.0f, 0.0f, ForceMode.VelocityChange);
        col.enabled = false;
        mitrail.enabled = false;
    }
}
