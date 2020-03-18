using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using GoogleMobileAds.Api;

public class AdManager : MonoBehaviour
{
    string APP_ID = "ca-app-pub-3075864074697091~2852795131";
    RewardBasedVideoAd rewardedVideo;

    // Start is called before the first frame update
    void Start()
    {
        RequestVideoAd();
    }

    // Update is called once per frame
    void Update()
    {

    }


    void RequestVideoAd()
    {
        //string BANNER_ID_TEST = "ca-app-pub-3075864074697091/5950851322"; // este es el chido para la app
        string BANNER_ID_TEST = "ca-app-pub-3940256099942544/5224354917"; // este viene desde Google Ads Test
        rewardedVideo = RewardBasedVideoAd.Instance;

        //Para la app
        //AdRequest adrequest = new AdRequest.Builder().Build();

        //Temporal
        AdRequest adRequest = new AdRequest.Builder().AddTestDevice("33BE2250B43518CCDA7DE426D04EE231").Build();

        rewardedVideo.LoadAd(adRequest, BANNER_ID_TEST);

    }

    public void ShowAd()
    {
        if (rewardedVideo.IsLoaded())
        {
            rewardedVideo.Show();
        }
    }
}
