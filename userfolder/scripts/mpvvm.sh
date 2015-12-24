#!/bin/sh

IP=$(VBoxManage guestproperty enumerate {`VBoxManage list runningvms | awk -F"{" '{print $2}'` | grep \IP | awk -F"," '{print $2}' | awk '{print $2}')
echo $IP

mpv http://$IP:8081
