
## git config
base  
```
git config --global core.editor vi
git config --global alias.b branch
git config --global alias.st status
git config --global alias.co checkout
git config --global credential.helper cache
git config --global color.ui auto
git config --global core.editor vi
```

proxy
```
git config --global http.proxy http://192.168.1.1:1080
git config --global http.https://golang.org.proxy socks5://192.168.1.1:1080
```
or  
```
git config --global http.proxy socks5://192.168.1.1:1080
git config --global http.proxy socks5h://192.168.1.1:1080
```

bash env proxy
```
export http_proxy=socks5h://172.16.3.235:1888
export HTTPS_PROXY=socks5h://172.16.3.235:1888
export ALL_PROXY=socks5h://172.16.3.235:1888
```

go get  
```
https_proxy=http://10.10.15.34:1080 go get -u golang.org/x/text
GOPROXY=https://goproxy.io go build
```
