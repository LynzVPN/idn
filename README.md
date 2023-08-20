</p> 
<h2 align="center"> Supported Linux Distribution</h2>
<p align="center"><img src="https://d33wubrfki0l68.cloudfront.net/5911c43be3b1da526ed609e9c55783d9d0f6b066/9858b/assets/img/debian-ubuntu-hover.png"></p> 
<p align="center"><img src="https://img.shields.io/static/v1?style=for-the-badge&logo=debian&label=Debian%209&message=Stretch&color=purple"> <img src="https://img.shields.io/static/v1?style=for-the-badge&logo=debian&label=Debian%2010&message=Buster&color=purple">  <img src="https://img.shields.io/static/v1?style=for-the-badge&logo=ubuntu&label=Ubuntu%2018&message=Lts&color=red"> <img src="https://img.shields.io/static/v1?style=for-the-badge&logo=ubuntu&label=Ubuntu%2020&message=Lts&color=red">
</p>
  

### Fitur Script
• SSH & OpenVPN

• SSH Websocket TLS & No TLS

• OHP SSH & OHP Dropbear & OHP OpenVPN

• XRAY VMESS 

• XRAY VLESS

• XRAY TROJAN

• SHADOWSOCKS

• TROJAN GO

• Backup Data ALL Service

• Restore Data ALL Service

# Service & Port

• OpenSSH                 : 443, 22

• OpenVPN                 : TCP 1194, UDP 2200, SSL 990

• Stunnel5                : 443, 445, 777

• Dropbear                : 443, 109, 143

• Squid Proxy             : 3128, 8080

• Badvpn                  : 7100, 7200, 7300

• Nginx                   : 89

• XRAYS Vmess TLS         : 8443

• XRAYS Vmess None TLS    : 80

• XRAYS Vless TLS         : 8443

• XRAYS Vless None TLS    : 80

• XRAYS Trojan            : 2083

• Websocket TLS           : 443

• Websocket None TLS      : 8880

• Websocket Ovpn          : 2086

• OHP SSH                 : 8181

• OHP Dropbear            : 8282

• OHP OpenVPN             : 8383

• Trojan Go               : 2087

 ### Server Information & Other Features

• Timezone                : Asia/Jakarta (GMT +7)

• Fail2Ban                : [ON]

• Dflate                  : [ON]

• IPtables                : [ON]

• Auto-Reboot             : [ON]

• IPv6                    : [OFF]

• Autoreboot On 05.00 GMT +7

• Futo Delete Expired Account

• Full Orders For Various Services

• White Label

# install
- Step 1 Update
```
apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y && reboot
```
- Step 2 Install
```
rm -f setup.sh && sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt install -y bzip2 gzip coreutils screen curl unzip && wget https://raw.githubusercontent.com/LynzVPN/idn/main/setup.sh && chmod +x setup.sh && ./setup.sh
```