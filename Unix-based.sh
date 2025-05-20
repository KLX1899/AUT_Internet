#!/bin/sh

echo -e '\n\nHello!\nWelcome to AUT internet keeper\n\n'


# === Your AUT credentials ===
USERNAME="Your_Username"        # You must change it with your username
PASSWORD="Your_Password"        # You must change it with your password


# === Send login request using curl ===
curl -d "username=$USERNAME&password=$PASSWORD&dst=&popup=false&erase-cookie=false" https://login.aut.ac.ir/login


# === Check internet connection ===
SSID="$(iwgetid -r)"

if ping -c 1 google.com > /dev/null 2>&1; then
    :
else
    if test "$SSID" = "CeWifi" || test "$SSID" = "CeWifi 5G"; then
        echo "CE faculty's wifi disconnected :("
        /bin/bash "./main.sh"; !#
    else
        echo "You're not connected to the CE faculty's wifi. :|"
    fi
fi
