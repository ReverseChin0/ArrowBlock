using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class Gamemanager : MonoBehaviour
{
    
    public float counter = 0;
    public bool startGame = false;

    public GameObject player,gameCanvas, pauseCanvas, restartCanvas;

    public TextMeshProUGUI counterText;

    public SCR_HitBoxPepsiman hitbox;

    SCR_ArrowManager arrman;

    [SerializeField]
    SCR_shieldrotation rotator;

    // Start is called before the first frame update
    void Start()
    {
        player = GameObject.FindGameObjectWithTag("Player");
        //counter = 100;
        gameCanvas.SetActive(false);
        pauseCanvas.SetActive(false);
        restartCanvas.SetActive(false);
        counterText.text = counter.ToString();
        arrman =GetComponent<SCR_ArrowManager>();
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
        startGame = !startGame;
        gameCanvas.SetActive(true);
        
    }

    public void PutMoreValueToScore(int _value)
    {
        counter += _value;
    }

    public bool IsGameable()
    {
        return startGame;
    }

    public void PauseButton()
    {
        Time.timeScale = 0;
        pauseCanvas.SetActive(true);

    }

    public void ContinueButtonPause()
    {
        Time.timeScale = 1;
        pauseCanvas.SetActive(false);
    }

    public void RestartButton(){
        counter = 0;
        startGame = true;
        restartCanvas.SetActive(false);
        player.GetComponent<Animator>().SetBool("DieNow", false);
        hitbox.ActiveArrow();
        arrman.ResetArrows();
        rotator.enabled = true;
    }

    public void ContinueButton(){
        startGame = true;
        restartCanvas.SetActive(true);
        player.GetComponent<Animator>().SetBool("DieNow", false);
        hitbox.ActiveArrow();
    }
}
