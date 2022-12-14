#!/bin/bash

URI=/oem/SampleVideo_1280x720_5mb.mp4

export mpp_syslog_perror=1

if [ "$1" != "" ]
then
    URI=$1
    if [ "${URI:0:1}" != "/" ]
    then
        URI=$(readlink -f $URI)
    fi
fi

if [ "${URI:0:1}" == "/" ]
then
    URI=file://$URI
fi

GST_DEBUG=fps*:7 gst-launch-1.0 uridecodebin uri=$URI ! fpsdisplaysink video-sink="waylandsink fullscreen=true" text-overlay=false signal-fps-measurements=true
