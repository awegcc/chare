
### perf
| raspberry pi 3b+ | hdparm cache | hdparm buffer |
| :--------------- | :-----------:| ------------: |
|  TF card         | 772.65 MB/s  | 21.78 MB/s    |
| hard disk        | 806.99 MB/s  | 33.28 MB/s    |

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
