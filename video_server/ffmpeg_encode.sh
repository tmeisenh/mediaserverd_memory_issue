#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

MOVIE="Timer.mp4"
PLAYLIST="playlist.m3u8"
OUTDIR=$DIR
LOCAL_HOSTNAME=`hostname`
HTTPURL="http://$LOCAL_HOSTNAME:8000/"

rm -f $DIR/*.ts $DIR/*.m3u8

ffmpeg -i $DIR/${MOVIE} -vcodec libx264 -bsf:v h264_mp4toannexb -flags -global_header -dcodec copy -acodec copy -q:v 0 -map 0 -f segment -segment_list $OUTDIR/${PLAYLIST} -segment_time 60 -segment_list_flags +live -reset_timestamps 1 -segment_list_entry_prefix ${HTTPURL} ${OUTDIR}/%06d.ts
