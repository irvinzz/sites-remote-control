@echo off
GOTO :%1
:playpause
  set "CMD=(function(f){f.player.pause()^|^|f.player.resume()^|^|f.play()})(Mu.pages.player.flow);"
  goto :END
:next
  set "CMD=Mu.pages.player.flow.next();"
  goto :END
:prev
  set "CMD=Mu.pages.player.flow.prev();
  goto :END
:END
echo %CMD% > cmd.txt
type cmd.txt | nc.exe -v -d localhost 32000
del cmd.txt
