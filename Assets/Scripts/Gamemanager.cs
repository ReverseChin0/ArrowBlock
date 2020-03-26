using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class Gamemanager : MonoBehaviour
{
    
    float counter;
    public bool startGame = false;

    GameObject player;

    public TextMeshProUGUI counterText;

    // Start is called before the first frame update
    void Start()
    {
        //player = GameObject.FindGameObjectWithTag("Player");
        counter = 100;
        counterText.text = counter.ToString();
    }

    // Update is called once per frame
    void Update()
    {
        if (startGame)
        {
            counter += Time.deltaTime;
            //Debug.Log(Time.time);
            counterText.text = Mathf.RoundToInt(counter).ToString();
        }
    }

    public void StartGame()
    {
        startGame = true;
    }

    public void PutMoreValueToScore(int _value)
    {
        counter += _value;
    }
}
