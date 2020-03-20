using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SCR_shieldrotation : MonoBehaviour
{
    bool derecha, izquierda, arriba,abajo;
    Quaternion targetRotation;

    [SerializeField]
    Collider[] escudopos;
#pragma warning disable 0649
    [SerializeField,Range(2.0f,30.0f)]
    float turnSpeed = 1;
#pragma warning restore 0649

    void Start()
    {
        targetRotation = Quaternion.Euler(0, 0, 0);
    }

    void Update()
    {
        GetInput();

        if (arriba){
            targetRotation = Quaternion.Euler(0, 0, 0);
            //escudopos[0].enabled = true;
        }

        if (derecha){
            targetRotation = Quaternion.Euler(0, 90.0f, 0);
        }

        if (abajo)
            targetRotation = Quaternion.Euler(0, 180.0f, 0);

        if (izquierda)
            targetRotation = Quaternion.Euler(0, 270, 0);

        transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, turnSpeed * Time.deltaTime);
    }

    void GetInput() 
    {
        arriba = Input.GetKeyDown(KeyCode.UpArrow);
        derecha = Input.GetKeyDown(KeyCode.RightArrow);
        abajo = Input.GetKeyDown(KeyCode.DownArrow);
        izquierda = Input.GetKeyDown(KeyCode.LeftArrow);
    }

    void ActivadDesactivarColli(int _index)
    {
        for (int i = 0; i < escudopos.Length; i++)
        {

        }
    }
}
