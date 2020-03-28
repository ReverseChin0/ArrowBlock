using System;
using UnityEngine;
using UnityEngine.Audio;

public class SCR_SoundManager : MonoBehaviour
{
    public static SCR_SoundManager sndinstance;

    [SerializeField]
    AudioSource[] audiosrc;

    [SerializeField]
    AudioMixer miMix;

    [SerializeField]
    AudioClip[] sonidos;

    private void Awake() {
        if (sndinstance == null)
            sndinstance = this;
        else
            Destroy(this);
    }
    public enum Sonidos
    {
        impacto,
    }

    public void PlaySound(Sonidos s) {
        if (s == Sonidos.impacto)
            ChangePitch();
        audiosrc[0].PlayOneShot(sonidos[(int)s]);
    }

    public void ChangePitch() {
        miMix.SetFloat("SFXPitch", UnityEngine.Random.Range(0.8f, 3.0f));
    }

    public void StopMusic(int _n) {
        Debug.Log("Stop " + audiosrc[_n].name);
        audiosrc[_n].Stop();
    }

    internal void ResumeMusic(int v) {
        Debug.Log("Resume " + audiosrc[v].name);
        audiosrc[v].Play();
    }
}
