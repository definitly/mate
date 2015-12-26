#!/bin/sh

IP=$(VBoxManage guestproperty enumerate {`VBoxManage list runningvms | awk -F"{" '{print $2}'` | grep \IP | awk -F"," '{print $2}' | awk '{print $2}')
echo $IP

mpv --cache=2048  http://$IP:8081
