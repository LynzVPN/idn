#!/bin/bash
# My Telegram : 
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
clear
source /var/lib/lynzvpn/ipvps.conf
if [[ "$IP" = "" ]]; then
domain=$(cat /etc/xray/domain)
else
domain=$IP
fi
tr="$(cat ~/log-install.txt | grep -w "Trojan" | cut -d: -f2|sed 's/ //g')"
until [[ $user =~ ^[a-zA-Z0-9_]+$ && ${user_EXISTS} == '0' ]]; do
		read -rp "Password : " -e user
		user_EXISTS=$(grep -w $user /etc/xray/config.json | wc -l)

		if [[ ${user_EXISTS} == '1' ]]; then
			echo ""
			echo -e "Username ${RED}${user}${NC} Already On VPS Please Choose Another"
			exit 1
		fi
	done
read -p "Expired (Days) : " masaaktif
hariini=`date -d "0 days" +"%Y-%m-%d"`
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
sed -i '/#xray-trojan$/a\#&# '"$user $exp"'\
},{"password": "'""$user""'","email": "'""$user""'"' /etc/xray/config.json
systemctl restart xray.service
trojanlink="trojan://${user}@${domain}:${tr}"
service cron restart
clear
echo -e ""
echo -e "$green━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$wh"
echo -e "        XRAY TROJAN"
echo -e "$green━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$wh"
echo -e "Remarks  : ${user}"
echo -e "Address  : ${domain}"
echo -e "Port     : ${tr}"
echo -e "Key      : ${user}"
echo -e "Created  : $hariini"
echo -e "Expired  : $exp"
echo -e "$green━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$wh"
echo -e "Link TR  : ${trojanlink}"
echo -e "$green━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$wh"