## nodejs rpm/deb packages repo
https://rpm.nodesource.com/pub_8.x/el/7/x86_64  
https://deb.nodesource.com/node_8.x/pool/main/n/nodejs  


## Centos remove unused packages
```
yum remove empathy cheese gnome-dictionary gnome-contacts\
    gnome-weather totem orca system-config-printer gnome-tweak-tool\
    pulseaudio-utils alsa-plugins-pulseaudio gnome-video-effects\
    alsa-firmware alsa-utils\
    system-config-printer-udev system-config-printer-libs gutenprint firewalld 
```

## Centos install teamviewer
```
rpm -i teamviewer_13.1.8286.x86_64.rpm
warning: teamviewer_13.1.8286.x86_64.rpm: Header V4 RSA/SHA1 Signature, key ID 0c1289c0: NOKEY
error: Failed dependencies:
       libQt5Qml.so.5()(64bit) >= 5.5 is needed by teamviewer-13.1.8286-0.x86_64
       libQt5Quick.so.5()(64bit) >= 5.5 is needed by teamviewer-13.1.8286-0.x86_64
       libQt5WebKit.so.5()(64bit) >= 5.5 is needed by teamviewer-13.1.8286-0.x86_64
       libQt5WebKitWidgets.so.5()(64bit) >= 5.5 is needed by teamviewer-13.1.8286-0.x86_64
       libQt5X11Extras.so.5()(64bit) >= 5.5 is needed by teamviewer-13.1.8286-0.x86_64
       qt5-qtdeclarative >= 5.5 is needed by teamviewer-13.1.8286-0.x86_64
       qt5-qtquickcontrols >= 5.5 is needed by teamviewer-13.1.8286-0.x86_64
   
yum install epel-release
yum install qt5-qtwebkit qt5-qtx11extras qt5-qtquickcontrols
```
## hiwifi configuration
```
HiWifi-4-pro
system type : Mediatek MT7621 ver:1, eco:3
machine     : HiWiFi Wireless HC5962 Board
cpu model   : MIPS 1004Kc V2.15
memory      : Mem-256MB
HC5962 - 1.4.8.20462s    MAC : D4EE0755F0FE
```
https://openwrt.io  
https://www.binss.me/blog/install-openwrt-on-hiwifi-router/

## SS  
www.jsss-5.top  
www.jsss.pro  
www.jsss.tech  
https://free-ss.tk  
https://free-ss.site  
https://www.v2ray.pro  
https://prc-word.com  
https://icymind.com/learn-from-gfw  
https://www.hurray0.com/menu/27/  
https://doub.io/  
https://congcong0806.github.io/2018/04/20/SS/  
https://tool.ssrshare.us/tool/free_ssr  
https://devpn.com/  

## SSR
www.socketpro.net  

## git (go get)
git config --global http.proxy http://127.0.0.1:1080  
git config --global https.proxy https//127.0.0.1:1080  
git config --global --unset http.proxy  
git config --global --unset https.proxy  

## openwrt
http://openwrt-dist.sourceforge.net  
https://cokebar.info/archives/962  
http://mike163.coding.me/2015/08/12/openwrt-shadowsocks-chinadns-setup/  

