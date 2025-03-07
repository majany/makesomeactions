#!/bin/bash

sudo apt install aria2

wget https://raw.githubusercontent.com/majany/makesomeactions/refs/heads/main/modelstodownload.txt

sed -i "s|%civitai_token%|${CIVITAI_TOKEN}|g" modelstodownload.txt

aria2c -i modelstodownload.txt -j2 -x 16 -s 16