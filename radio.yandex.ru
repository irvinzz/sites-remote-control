#!/bin/bash

case "$1" in
    playpause)
	CMD="Mu.Flow.togglePause();"
    ;;
    next)
	CMD="Mu.Flow.flow.next();"
    ;;
esac
node app.js radio.yandex.ru $CMD
exit 0
