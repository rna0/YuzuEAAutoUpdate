#! /bin/bash

YUZU_PATH=/home/deck/Documents/yuzu.AppImage

if ping -q -c 1 -W 1 google.com >/dev/null; then

# Download latest Yuzu EA
curl -s https://api.github.com/repos/pineappleEA/pineapple-src/releases/latest | jq -r ".assets[0] | .browser_download_url" | wget -qO $YUZU_PATH -i -

# Give it executable permissions
chmod +x $YUZU_PATH

fi

# Launch Yuzu
$YUZU_PATH
