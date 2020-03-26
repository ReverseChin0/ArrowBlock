using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SCR_ArrowManager : MonoBehaviour
{
    [SerializeField]
    SCR_Flecha arrow=default, bouncearrow=default;
    Queue<SCR_Flecha_normal> flechas = new Queue<SCR_Flecha_normal>();
    Queue<SCR_Flecha_rebote> rebotadoras = new Queue<SCR_Flecha_rebote>();

    public Transform[] posicionesdeSpawn;

    [SerializeField]
    int MaxArrow = 10,MaxBounce = 10;

    void Start() {
        int i;
        for (i = 0; i < MaxArrow; i++) {
            flechas.Enqueue((SCR_Flecha_normal)Instantiate(arrow, new Vector3(0.0f, 100.0f, 0.0f), Quaternion.identity));
        }
        for (i = 0; i < MaxBounce; i++) {
            rebotadoras.Enqueue((SCR_Flecha_rebote)Instantiate(bouncearrow, new Vector3(0.0f, 100.0f, 0.0f), Quaternion.identity));
        }
    }

    public void SpawnArrow(int _tipoflecha, Vector3 pos, Quaternion orientation) {
        SCR_Flecha actual=default;
        if (_tipoflecha == 0) //Flechas
            actual = flechas.Dequeue();
        else//Rebotadoras
            actual = rebotadoras.Dequeue();
        
        actual.transform.position = pos;
        actual.transform.rotation = orientation;

        actual.Inicio();
    }

    void Update() {
        
    }
}
