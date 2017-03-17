#!/bin/bash

case "$1" in
    playpause)
	CMD='$(".player-controls__btn_play").first().click();'
    ;;
    next)
	CMD='$(".player-controls__btn_next").first().click();'
    ;;
    prev)
	CMD='$(".player-controls__btn_prev").first().click();'
    ;;
esac
node app.js music.yandex.ru "$CMD"
exit 0
