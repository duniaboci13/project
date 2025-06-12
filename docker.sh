wget https://github.com/indigo-dc/udocker/releases/download/1.3.9/udocker-1.3.9.tar.gz && tar zxvf udocker-1.3.9.tar.gz && mv udocker-1.3.9/udocker udocker && rm -rf udocker-1.3.9
cd udocker
./udocker pull ubuntu:focal
./udocker create --name=focal ubuntu:focal
./udocker  run focal /bin/bash
apt update && apt -y install curl git wget sudo ufw
