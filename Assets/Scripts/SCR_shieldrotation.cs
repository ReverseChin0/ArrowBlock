using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SCR_shieldrotation : MonoBehaviour
{
    bool derecha, izquierda, arriba,abajo;
    Quaternion targetRotation;

    [SerializeField]
    Collider[] escudoColl;

    [SerializeField,Range(2.0f,30.0f)]
    float turnSpeed = 1;


    void Start()
    {
        targetRotation = Quaternion.Euler(0, 0, 0);
    }

    void Update()
    {
        GetInput();

        if (arriba){
            targetRotation = Quaternion.Euler(0, 0, 0);
            ActivadDesactivarColli(0);
        }

        if (derecha){
            targetRotation = Quaternion.Euler(0, 90.0f, 0);
            ActivadDesactivarColli(1);
        }

        if (abajo) {
            targetRotation = Quaternion.Euler(0, 180.0f, 0);
            ActivadDesactivarColli(2);
        }
            

        if (izquierda) {
            targetRotation = Quaternion.Euler(0, 270, 0);
            ActivadDesactivarColli(3);
        }
            

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
        for (int i = 0; i < escudoColl.Length; i++)
        {
            
            if (i == _index)
                escudoColl[i].enabled = true;
            else
                escudoColl[i].enabled = false;
        }
    }
}
