#!/bin/bash

case "$1" in
    playpause)
	CMD='{"selector":{"uri":"https://radio.yandex.ru/"},"command":"Mu.Flow.togglePause();"}'
    ;;
    next)
	CMD='{"selector":{"uri":"https://radio.yandex.ru/"},"command":"Mu.Flow.flow.next();"}'
    ;;
esac
echo $CMD | nc -c localhost 32000
exit 0
