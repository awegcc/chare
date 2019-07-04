## install autossh
`yum install autossh`

## ssh-key(generated by ssh-keygen) to auto login
`ssh-copy-id root@serverip`

## config
/etc/default/autossh  
```
AUTOSSH_POLL=60
AUTOSSH_FIRST_POLL=30
AUTOSSH_GATETIME=0
AUTOSSH_PORT=23456
```

## systemd service
/etc/systemd/system/autossh.service  
```
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
```