#!/bin/bash
set -euo pipefail

echo -e '\n\033[1;36mHello!\033[0m'
echo -e '\033[1;36mWelcome to AUT Internet Keeper\n\n\033[0m'

# === Load credentials ===
if [[ -f "./.aut_wifi.env" ]]; then
    source "./.aut_wifi.env"
else
    read -p "Enter AUT username: " USERNAME
    read -s -p "Enter AUT password: " PASSWORD
    echo
    echo "USERNAME=$USERNAME" > "./.aut_wifi.env"
    echo "PASSWORD=$PASSWORD" >> "./.aut_wifi.env"
    chmod 600 "./.aut_wifi.env"
fi

# === Login request ===
RESPONSE=$(curl --silent --fail \
     -d "...data..." \
     https://login.aut.ac.ir/login)

if [[ $RESPONSE == *"Hotspot login success"* ]]; then
    echo -e '\033[1;32mLogin successful\033[0m\n\n'
else
    echo -e '\033[1;31mLogin might have failed\033[0m\n\n'

    # === Check internet ===
    SSID="$(iwgetid -r)"
    check_internet() {
        curl -s --head --max-time 2 https://google.com | grep -q "200 OK"
    }

    if ! check_internet; then
        case "$SSID" in
            "CeWifi"|"CeWifi 5G")
                echo "CE faculty's Wi‑Fi disconnected :("
                sleep 30
                bash "./test.sh"
                ;;
            *)
                echo "You're not connected to the CE faculty's Wi‑Fi. :|"
                ;;
        esac
    fi
fi