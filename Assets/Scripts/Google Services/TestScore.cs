using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TestScore : MonoBehaviour
{

    public Text texto;
    public int score = 0;

    public void Incremento()
    {
        score++;
        //texto.text = score.ToString();

        PlayerPrefs.SetInt("ScoreToUpdate", PlayerPrefs.GetInt("ScoreToUpdate", 0) + 1);

        texto.text = PlayerPrefs.GetInt("ScoreToUpdate", 0).ToString();

    }

}
