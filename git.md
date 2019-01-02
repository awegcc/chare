
## git config
base  
```
git config --global alias.st status
git config --global alias.co checkout
git config --global credential.helper cache
git config --global color.ui auto

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
export http_proxy=http://192.168.1.1:1080
export https_proxy=http://192.168.1.1:1080
ALL_PROXY=socks5://192.168.1.1:8888 git clone https://github.com/some/one.git
```

go get  
```
https_proxy=http://10.10.15.34:1080 go get -u golang.org/x/text
```
