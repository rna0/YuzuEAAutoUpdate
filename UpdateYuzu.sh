#! /bin/bash
YUZU_PATH=/home/deck/Applications/yuzu.AppImage
# Download latest Yuzu EA
curl -s https://api.github.com/repos/pineappleEA/pineapple-src/releases/latest | jq -r ".assets[0] | .browser_download_url" | wget -qO $YUZU_PATH -i -
# Give it executable permissions
chmod +x $YUZU_PATH
# Launch Yuzu
$YUZU_PATH
