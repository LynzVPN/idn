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
echo -e "$y                       TROJAN GFW $wh"
echo -e "$green━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$wh"
echo -e ""
echo -e "$yy[ 01 ]$y Create Account XRAYS Trojan"
echo -e "$yy[ 02 ]$y Delete Account XRAYS Trojan"
echo -e "$yy[ 03 ]$y Extending Account XRAYS Trojan Active Life"
echo -e "$yy[ 04 ]$y Check User Login XRAYS Trojan"
echo -e "$yy[ 05 ]$y Menu"
echo -e "$yy[ 06 ]$y Exit"
echo -e ""
echo -e "$green━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$wh"
read -p "Select From Options [ 1 - 6 ] : " menu
echo -e ""
case $menu in
1)
addtrojan
;;
2)
deltrojan
;;
3)
renewtrojan
;;
4)
cektrojan
;;
5)
clear
menu
;;
6)
clear
exit
;;
*)
clear
menu
;;
esac
