
### perf
#### 1. IO perf(hdparm read/ dd write)
| raspberry pi 3b+ | hdparm(r) cache | hdparm(r) buffer | dd (w dsync) |    dd(w)  |
| :--------------- | :--------------:| :---------------:|:------------:|:---------:|
| **TF card**      |    772.65 MB/s  |    21.78 MB/s    |  14.0 MB/s   | 18.9 MB/s |
| **hard disk**    |    806.99 MB/s  |    33.28 MB/s    |  9.6 MB/s    | 33.3 MB/s |

#### 2. Network perf
| raspberry pi 3b+ | scp(upload 2GB) | http(upload 3GB) | scp(download) | http(download)|
| :--------------- | :--------------:| :---------------:|:------------:|:---------:|
| **2.4G**         |     2.2 MB/s    |    2.27  MB/s    |     MB/s     |    MB/s   |
| **5G**           |     2.5 MB/s    |          MB/s    |     MB/s     |    MB/s   |

### hostapd config
#### 1. 2.4G #5G
```
interface=wlan0
driver=nl80211
hw_mode=g  #a
macaddr_acl=0
channel=6  #36
ssid=raspberry
wpa=2
wpa_key_mgmt=WPA-PSK
wpa_passphrase=password
rsn_pairwise=CCMP
```

### lightdm config
Just edit `/etc/lightdm/pi-greeter.conf`
