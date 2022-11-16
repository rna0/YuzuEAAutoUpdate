#! /bin/bash
curl -s https://api.github.com/repos/pineappleEA/pineapple-src/releases/latest | jq -r ".assets[0] | .browser_download_url" | wget -qO /path/to/yuzu.AppImage -i -
/path/to/yuzu.AppImage
