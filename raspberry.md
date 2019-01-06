
### hostapd config
#### 1. 2.4G
```
interface=wlan0
driver=nl80211
hw_mode=g
macaddr_acl=0
channel=6
ssid=raspberry
wpa=2
wpa_key_mgmt=WPA-PSK
wpa_passphrase=password
rsn_pairwise=CCMP
```

#### 2. 5G
/etc/hostapd/hostapd.conf  
``` 
interface=wlan0
driver=nl80211
hw_mode=a
country_code=US
macaddr_acl=0
channel=36
ssid=raspberry
wpa=2
wpa_key_mgmt=WPA-PSK
wpa_passphrase=password
rsn_pairwise=CCMP
```
