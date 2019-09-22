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
cat<<EOF>/etc/systemd/system/autossh.service  
[Unit]
Description=autossh
Wants=network-online.target
After=network-online.target

[Service]
Type=simple
#User=autossh
EnvironmentFile=/etc/default/autossh
ExecStart=/usr/bin/autossh -NR 20022:localhost:22 root@serverip -i /root/.ssh/id_rsa
Restart=always
RestartSec=60

[Install]
WantedBy=multi-user.target
EOF
```

### 2. Server Config
- Install sshpass  
`yum install sshpass`

- ssh client  
`sshpass -p clientpass ssh -p 20022 root@localhost`
