#!/bin/bash

#Monkey version
case "$1" in
    playpause)
	CMD='{"selector":{"uri":"://vk.com/"},"command":"document.getElementById(\"head_play_btn\").click();"}'
    ;;
    next)
	CMD='{"selector":{"uri":"://vk.com/"},"command":"document.getElementById(\"pd_next\").click();"}'
    ;;
    prev)
	CMD='{"selector":{"uri":"://vk.com/"},"command":"document.getElementById(\"pd_prev\").click();;"}'
    ;;
esac
echo $CMD | nc -c localhost 32000
exit 0
