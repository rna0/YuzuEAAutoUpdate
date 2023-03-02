#! /bin/bash
curl -s https://api.github.com/repos/pineappleEA/pineapple-src/releases/latest | jq -r ".assets[0] | .browser_download_url" | wget -qO ~/Applications/yuzu.AppImage -i -
~/Applications/yuzu.AppImage
