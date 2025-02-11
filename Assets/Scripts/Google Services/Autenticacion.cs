﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using GooglePlayGames;
using GooglePlayGames.BasicApi;
using UnityEngine.SocialPlatforms;

public class Autenticacion : MonoBehaviour
{
    public PlayGamesPlatform platform;

    void Start()
    {
        if(platform == null)
        {
            PlayGamesClientConfiguration config = new PlayGamesClientConfiguration.Builder().Build();
            PlayGamesPlatform.InitializeInstance(config);
            PlayGamesPlatform.DebugLogEnabled = true;

            platform = PlayGamesPlatform.Activate();

            Social.Active.localUser.Authenticate(success =>
            {
                if (success)
                {
                    Debug.Log("Loggeado");
                }
                else
                {
                    Debug.Log("Fallido");
                }
            });
        }
    }

}
