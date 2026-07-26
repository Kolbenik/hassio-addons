#!/bin/bash

# Prüfen, ob die Home Assistant Konfigurationsdatei existiert
if [ -f /data/options.json ]; then
    # Werte extrahieren und als Umgebungsvariablen setzen
    export ACCOUNT_TOKEN=$(jq -r '.ACCOUNT_TOKEN // empty' /data/options.json)
    export MACHINE_NAME=$(jq -r '.MACHINE_NAME // "HomeAssistant"' /data/options.json)
    export PUID=$(jq -r '.PUID // 0' /data/options.json)
    export PGID=$(jq -r '.PGID // 0' /data/options.json)
    export TZ=$(jq -r '.TZ // "Europe/Berlin"' /data/options.json)
fi

# Übergabe an das originale LinuxServer s6-overlay Init-System
exec /init
