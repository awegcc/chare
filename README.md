## nodejs rpm/deb packages repo
https://rpm.nodesource.com/pub_8.x/el/7/x86_64  
https://rpm.nodesource.com/pub_10.x/el/8/x86_64  
https://deb.nodesource.com/node_8.x/pool/main/n/nodejs  
https://deb.nodesource.com/node_10.x/pool/main/n/nodejs  
echo 'registry=https://registry.npm.taobao.org' > ~/.npmrc


## Centos remove unused packages
```
yum remove empathy cheese gnome-dictionary gnome-contacts\
    gnome-weather totem orca system-config-printer gnome-tweak-tool\
    pulseaudio-utils alsa-plugins-pulseaudio gnome-video-effects\
    alsa-firmware alsa-utils\
    system-config-printer-udev system-config-printer-libs gutenprint firewalld 
```

## virsh console Centos7
OS installation  
```
virt-install –name centos7 –ram 1024 –disk path=/centos7.qcow2\
  –location /CentOS-7-x86_64-DVD-1708.iso –nographics\
  –accelerate –extra-args=”console=ttyS0″ –network bridge=virbr0
```
OS setting
```
systemctl enable serial-getty@ttyS0.service
systemctl start serial-getty@ttyS0.service
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
www.jsss-9.top  
www.jsss.fun  
www.jsss.ws  
https://gwssr.com  
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

## openwrt
http://openwrt-dist.sourceforge.net  
https://cokebar.info/archives/962  
http://mike163.coding.me/2015/08/12/openwrt-shadowsocks-chinadns-setup/  

## sockst  
www.live-socks.net  
spys.one/en/socks-proxy-list  
https://sockslist.net  
https://www.socks-proxy.net  
https://proxyscrape.com/en/free-proxy-list  

## github
```
LGTM: Looks Good To Me.
SGTM: Sounds Good To Me.
WIP: Work In Progress. 
PTAL: Please Take A Look.
TBR: To Be Reviewed. 
TL;DR: Too Long; Didn't Read. 
TBD: To Be Done(or Defined/Discussed/Decided/Determined). 
```
