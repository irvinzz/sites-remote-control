#!/bin/bash

case "$1" in
    playpause)
	CMD='{"selector":{"uri":"https://music.yandex.ru/"},"command":"(function(f){f.player.pause() || f.player.resume() || f.play()})(Mu.pages.player.flow);"}'
    ;;
    next)
	CMD='{"selector":{"uri":"https://music.yandex.ru/"},"command":"Mu.pages.player.flow.next();"}'
    ;;
    prev)
	CMD='{"selector":{"uri":"https://music.yandex.ru/"},"command":"Mu.pages.player.flow.prev();"}'
    ;;
esac
echo $CMD | nc -c localhost 32000
exit 0
