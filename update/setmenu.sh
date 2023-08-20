#!/bin/bash
clear
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
echo -e "$green━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$wh"
echo -e "$y                    SYSTEM SETTING$wh"
echo -e "$green━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$wh"
echo -e ""
echo -e "$yy[ 01 ]$y  Add Or Change Subdomain Host For VPS"
echo -e "$yy[ 02 ]$y  Renew Certificate Account"
echo -e "$yy[ 03 ]$y  Change Port Of Some Service"
echo -e "$yy[ 04 ]$y  Autobackup Data VPS"
echo -e "$yy[ 05 ]$y  Backup Data VPS"
echo -e "$yy[ 06 ]$y  Restore Data VPS"
echo -e "$yy[ 07 ]$y  Webmin Menu"
echo -e "$yy[ 08 ]$y  Limit Bandwith Speed Server"
echo -e "$yy[ 09 ]$y  Check Usage of VPS Ram"
echo -e "$yy[ 10 ]$y  Reboot VPS"
echo -e "$yy[ 11 ]$y  Speedtest VPS"
echo -e "$yy[ 12 ]$y  Displaying System Information"
echo -e "$yy[ 13 ]$y  Info Script Auto Install"
echo -e "$yy[ 14 ]$y  Menu"
echo -e "$yy[ 15 ]$y  Exit"
echo -e ""
echo -e "$green━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$wh"
echo -e ""
read -p "Select From Options [ 1 - 60 ] : " menu
echo -e ""
case $menu in
1)
addhost
;;
2)
certv2ray
;;
3)
changeport
;;
4)
autobackup
;;
5)
backup
;;
6)
restore
;;
7)
wbmn
;;
8)
limitspeed
;;
9)
ram
;;
10)
reboot
/sbin/reboot
;;
11)
speedtest
;;
12)
info
;;
13)
about
;;
14)
clear
menu
;;
15)
clear
exit
;;
*)
clear
menu
;;
esac
