#!/bin/bash

# Firefox comme navigateur par défaut
xdg-settings set default-web-browser firefox.desktop

# Tilix comme terminal par défaut
sudo update-alternatives --set x-terminal-emulator /usr/bin/tilix

# Charger la configuration de Tilix
dconf load /com/gexperts/Tilix/ < ./config/tilix_config.json

# Épingler des applications sur la barre latérale
apps_to_pin=(
    "firefox_firefox.desktop"
    "org.gnome.Nautilus.desktop"
    "tilix.desktop"
    "code_code.desktop"
    "spotify_spotify.desktop"
)

new_apps="["
for app in "${apps_to_pin[@]}"; do
    new_apps+="'$app', "
done
new_apps="${new_apps::-2}]"

gsettings set org.gnome.shell favorite-apps "$new_apps"
