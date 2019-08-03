#!/usr/local/bin/bash

#The Webserver interface must be enabled. You can find it in Settings->Services->Webserver
#Set a custom port like 6969 (don't use 80 or 8080)
#Edit the $URL var with your custom port

JSON='{"jsonrpc":"2.0","method":"Addons.SetAddonEnabled","params":{"addonid":"pvr.iptvsimple","enabled":"toggle"},"id":1}'
URL="http://192.168.1.45:8081/jsonrpc"
curl -s -X POST -H "Content-Type: application/json" -d $JSON $URL
curl -s -X POST -H "Content-Type: application/json" -d $JSON $URL