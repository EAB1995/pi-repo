#!/bin/bash
export JACK_NO_AUDIO_RESERVATION=1

/usr/bin/jackd -R -P 95 -d alsa -d hw:pisound -r 48000 -p 128 -n 2 &

sleep 3

jack_connect system:capture_1 system:playback_1
jack_connect system:capture_2 system:playback_2

echo "RAN JACKD STARTUP SCRIPT"
