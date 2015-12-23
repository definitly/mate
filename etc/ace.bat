@echo off
set id=856f4dfedc733c085ff24ca6908fad583ba4e477
c:
cd C:\Documents and Settings\vcore\Application Data\ACEStream\player\
start ace_player.exe    acestream://%id%  --sout="#http{mux=ts,dst=:8081/}" --sout-keep