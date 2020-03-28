using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SCR_HitBoxPepsiman : MonoBehaviour
{
    public Animator anim;
    Gamemanager scr_gamemanager;
    GameObject[] flechas;

    [SerializeField]
    SCR_shieldrotation stop;

    private void Start()
    {
        //scr_gamemanager = GameObject.FindGameObjectWithTag("Gamemanager").GetComponent<Gamemanager>();
        scr_gamemanager = FindObjectOfType<Gamemanager>();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnCollisionEnter(Collision collision)
    {
        if(collision.gameObject.tag == "Flecha")
        {
            anim.SetBool("DieNow", true);
            scr_gamemanager.restartCanvas.SetActive(true);
            scr_gamemanager.StartGame();
            stop.enabled = false;

            PlayerPrefs.SetInt("ScoreToUpdate", Mathf.RoundToInt(scr_gamemanager.counter));


            flechas = GameObject.FindGameObjectsWithTag("Flecha");
            for(int i = 0; i < flechas.Length; i++)
            {
                flechas[i].SetActive(false);
            }
        }
    }

    public void ActiveArrow()
    {
        for (int i = 0; i < flechas.Length; i++)
        {
            flechas[i].SetActive(true);
        }
    }
}
