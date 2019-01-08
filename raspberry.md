
### perf

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
