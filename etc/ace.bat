@echo off
chcp 1251 >nul
set id=a9fc9e195b3032d13b5e1380cdbc01c0de9ec1f9
c:

cd C:\Documents and Settings\Admin\Application Data\ACEStream\player
start ace_player.exe    acestream://%id%  --sout="#http{mux=ts,dst=:8081/}" --sout-keep