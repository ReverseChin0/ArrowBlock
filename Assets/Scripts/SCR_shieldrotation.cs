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

    int lTouch = 999;
    int touches = 0;

    void Start()
    {
        targetRotation = Quaternion.Euler(0, 0, 0);
    }

    void Update()
    {
        GetInput();
#if UNITY_EDITOR  
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
#endif
#if UNITY_ANDROID
        switch (touches)
        {
            case 1:
                //derecha
                targetRotation = Quaternion.Euler(0, 90.0f, 0);
                ActivadDesactivarColli(1);
                break;
            case 2:
                //abajo
                targetRotation = Quaternion.Euler(0, 180.0f, 0);
                ActivadDesactivarColli(2);
                break;
            case 3:
                //izquierda
                targetRotation = Quaternion.Euler(0, 270, 0);
                ActivadDesactivarColli(3);
                break;
            case 4:
                //arriba
                targetRotation = Quaternion.Euler(0, 0, 0);
                ActivadDesactivarColli(0);
                break;
        }
#endif
        transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, turnSpeed * Time.deltaTime);
    }

    void GetInput() 
    {
#if UNITY_EDITOR    
        arriba = Input.GetKeyDown(KeyCode.UpArrow);
        derecha = Input.GetKeyDown(KeyCode.RightArrow);
        abajo = Input.GetKeyDown(KeyCode.DownArrow);
        izquierda = Input.GetKeyDown(KeyCode.LeftArrow);
#endif
#if UNITY_ANDROID

        if (Input.touchCount > 0)
        {
            int i = 0;
            while (i < Input.touchCount)
            {
                Touch touch = Input.GetTouch(0); //OnMouseClick
                Vector2 touchPos = getTouchPosition(touch.position * -1);
                //Vector2 touchPosD = Camera.main.ScreenToViewportPoint(touch.position);
                if (touch.phase == TouchPhase.Began)
                {
                    if (touch.position.x > Screen.width / 2) // lado derecho
                    {
                        // texto.text = "Lado derecho";
                        
                        touches++;
                        if (touches > 4)
                        {
                            touches = 1;
                        }
                        

                    }
                    else
                    {
                        // texto.text = "Lado izquierdo";
                        lTouch = touch.fingerId;
                        touches--;
                        if (touches < 1)
                        {
                            touches = 4;
                        }



                    }
                }
                else if (touch.phase == TouchPhase.Moved && lTouch == touch.fingerId)
                {




                }
                else if (touch.phase == TouchPhase.Ended && lTouch == touch.fingerId)
                {
                    //IsOnScreen = true;

                    lTouch = 999;
                }



                i++;

            }

        }

#endif
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

    Vector2 getTouchPosition(Vector2 touchPosition)
    {
        return Camera.main.ScreenToWorldPoint(new Vector3(touchPosition.x, touchPosition.y, transform.position.z));
    }
}
