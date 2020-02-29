https://www.centos.bz/2017/08/ssh-reverse-proxy  

### 1. Client Config
- copy ssh-key to server  
`ssh-copy-id root@serverip`

- autossh config  
install
`yum install autossh`

config
```
cat<<EOF>/etc/default/autossh  
AUTOSSH_POLL=60
AUTOSSH_FIRST_POLL=30
AUTOSSH_GATETIME=0
AUTOSSH_PORT=23456
EOF
```
systemd service
```
cat > /etc/systemd/system/autossh.service << EOF
[Unit]
Description=autossh
Wants=network-online.target
After=network-online.target

[Service]
Type=simple
#User=autossh
EnvironmentFile=/etc/default/autossh
ExecStart=/usr/bin/autossh -i /root/.ssh/id_rsa -CqNR 0.0.0.0:20022:localhost:22 root@serverip
Restart=always
RestartSec=60

[Install]
WantedBy=multi-user.target
EOF
```

### 2. Server Config
- ssh config
```
AllowAgentForwarding yes
AllowTcpForwarding yes
GatewayPorts yes
X11Forwarding yes
X11DisplayOffset 10
X11UseLocalhost no
```
- Install sshpass  
`yum install sshpass`

- ssh client  
`sshpass -p clientpass ssh -p 20022 root@serverip`

