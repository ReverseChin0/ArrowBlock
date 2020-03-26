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
    int npos;

    [SerializeField]
    int MaxArrow = 10,MaxBounce = 10;

    public float InitialSpawnRate = 1.0f;
    public float maxspawnRate = 0.1f;
    float timeSinceLastSpawn, timeBetweenSpawns;

    void Start() {
        int i;
        npos = posicionesdeSpawn.Length;
        timeBetweenSpawns = InitialSpawnRate;
        for (i = 0; i < MaxArrow; i++) {
            flechas.Enqueue((SCR_Flecha_normal)Instantiate(arrow, new Vector3(0.0f, 100.0f, 0.0f), Quaternion.identity));
        }

        for (i = 0; i < MaxBounce; i++) {
            rebotadoras.Enqueue((SCR_Flecha_rebote)Instantiate(bouncearrow, new Vector3(0.0f, 100.0f, 0.0f), Quaternion.identity));
        }
    }

    public void SpawnArrow(int _tipoflecha, Vector3 pos, Quaternion orientation) {
        SCR_Flecha actual=default;
        if (_tipoflecha == 0){ //Flechas
            actual = flechas.Dequeue();
        } else {//Rebotadoras
            actual = rebotadoras.Dequeue();
        }
        
        actual.transform.position = pos;
        actual.transform.rotation = orientation;

        actual.Inicio();

        if (_tipoflecha == 0)
            flechas.Enqueue((SCR_Flecha_normal)actual);
        else
            rebotadoras.Enqueue((SCR_Flecha_rebote)actual);
    }

    void FixedUpdate() {
        timeSinceLastSpawn += Time.deltaTime;
        if (timeSinceLastSpawn >= timeBetweenSpawns) {
            timeSinceLastSpawn -= timeBetweenSpawns;
            timeBetweenSpawns *= 0.99f;

            if (timeBetweenSpawns < maxspawnRate)
                timeBetweenSpawns = maxspawnRate;
          
            int proba = Random.Range(0, 100);
            int p = Random.Range(0, npos);
            if (proba < 90) {
                SpawnArrow(0, posicionesdeSpawn[p].position, posicionesdeSpawn[p].rotation);
            } else {
                SpawnArrow(1, posicionesdeSpawn[p].position, posicionesdeSpawn[p].rotation);
            }
        }
    }

}
