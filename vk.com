#!/bin/bash

cd "$(dirname "$0")"

case "$1" in
    playpause)
	CMD='document.getElementById("head_play_btn").click();'
    ;;
    next)
	CMD='document.getElementById("pd_next").click();'
    ;;
    prev)
	CMD='document.getElementById("pd_prev").click();'
    ;;
esac
node app.js vk.com "$CMD"
exit 0
