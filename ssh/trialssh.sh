#!/bin/bash
# My Telegram : https://t.me/Akbar218
# ==========================================
# Color
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
Blue='\e[1;34m'
NC='\e[0m'
DF='\e[39m'
Bold='\e[1m'
Blink='\e[5m'
yell='\e[33m'
red='\e[31m'
green='\e[32m'
blue='\e[34m'
PURPLE='\e[35m'
cyan='\e[36m'
Lred='\e[91m'
Lgreen='\e[92m'
Lyellow='\e[93m'
BGreen='\e[1;32m'
BYellow='\e[1;33m'
BBlue='\e[1;34m'
BPurple='\e[1;35m'
BCyan='\e[1;36m'
NC='\e[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
LIGHT='\033[0;37m'
# ==========================================
# Getting
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
source /var/lib/akbarstorevpn/ipvps.conf
if [[ "$IP2" = "" ]]; then
domain=$(cat /etc/xray/domain)
else
domain=$IP2
fi
clear
IP=$(wget -qO- ipinfo.io/ip);
ssl="$(cat ~/log-install.txt | grep -w "Stunnel5" | cut -d: -f2)"
sqd="$(cat ~/log-install.txt | grep -w "Squid" | cut -d: -f2)"
ovpn="$(netstat -nlpt | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
ovpn2="$(netstat -nlpu | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
Login=Trial`</dev/urandom tr -dc X-Z0-9 | head -c4`
hari="1"
Pass=1
clear
systemctl restart ws-tls
systemctl restart ws-nontls
systemctl restart ssh-ohp
systemctl restart dropbear-ohp
systemctl restart openvpn-ohp
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
hariini=`date -d "0 days" +"%Y-%m-%d"`
expi=`date -d "$masaaktif days" +"%Y-%m-%d"`
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo -e "$green━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$wh"
echo -e "            SSH ACCOUNT "
echo -e "$green━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$wh"
echo -e "Domain        : ${domain}"
echo -e "Username      : $Login"
echo -e "Password      : $Pass"
echo -e "$green━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$wh"
echo -e "Ssh Ws No SSL : $ws2"
echo -e "Ssh Ws SSL    : $ws"
echo -e "Dropbear      : 109, 143"
echo -e "SSL/TLS       : $ssl"
echo -e "Ovpn Ws       : 2086"
echo -e "BadVpn        : 7100-7200-7300"
echo -e "$green━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$wh"
echo -e "Expired       : $expi"
echo -e "$green━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$wh"