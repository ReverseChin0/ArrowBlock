using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SCR_Menu : MonoBehaviour
{
    [SerializeField]
    Renderer asiento = default;

    [SerializeField]
    float duracion = 0.5f, windUp=0.5f, duracionLerp = 1.0f;
    
    [SerializeField]
    Animator anim = default;

    [SerializeField]
    Transform cam=default,target = default;

    MaterialPropertyBlock miblock;

    Gamemanager scr_gamemanager;

    

    private void Start()
    {
        //scr_gamemanager = GameObject.FindGameObjectWithTag("Gamemanager").GetComponent<Gamemanager>();
        scr_gamemanager = FindObjectOfType<Gamemanager>();
    }

    public void IniciarJuego()
    {
        anim.SetTrigger("Start");
        StartCoroutine(fadeoutsilla(0.5f));
        StartCoroutine(LerpToPos(target,1.0f));
        scr_gamemanager.StartGame();
    }

    public void ToggleGo(GameObject go)
    {
        go.SetActive(!go.activeSelf);
    }

    IEnumerator LerpToPos(Transform _t, float _delay)
    {
        yield return new WaitForSeconds(_delay);
        float delta = 1 / duracionLerp;
        float t = 0.0f;
        Vector3 inipos = cam.position;
        Quaternion inirot = cam.rotation;
        while (t < 1.0f)
        {
            t += delta * Time.deltaTime;
            if (t > 1.0f)
            {
                t = 1.0f;
            }
            cam.position = Vector3.Lerp(inipos, target.position, t);
            cam.rotation = Quaternion.Lerp(inirot, target.rotation, t);
            yield return null;
        }
    }

    IEnumerator fadeoutsilla(float _windUp)
    {
        float delta = 1 / duracion;
        float t = 1.0f;
        yield return new WaitForSeconds(_windUp);
        while(t > 0.0f)
        {
            t -= delta * Time.deltaTime;
            if (t < 0.0f)
            {
                t = 0.0f;
            }
            miblock = new MaterialPropertyBlock();
            miblock.SetFloat("_transicion", t-0.1f);
            asiento.SetPropertyBlock(miblock);
            yield return null;
        }
       
    }
}
