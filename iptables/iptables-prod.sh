
# prod环境数据库集群(sh,sz)所有机器上添加iptables规则
iptables -I FORWARD -p tcp ! -s 172.17.0.0/16 --dport 6380  -j DROP
iptables -I FORWARD -p tcp ! -s 172.17.0.0/16 --dport 26380 -j DROP

iptables -I FORWARD -p tcp --dport 6380  -s 10.4.130.84 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 10.4.130.84 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 10.4.130.85 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 10.4.130.85 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 10.4.130.86 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 10.4.130.86 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 10.4.130.87 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 10.4.130.87 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 10.4.130.88 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 10.4.130.88 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 10.4.130.89 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 10.4.130.89 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 10.4.130.90 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 10.4.130.90 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 10.3.206.91 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 10.3.206.91 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 10.3.206.94 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 10.3.206.94 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 10.3.206.95 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 10.3.206.95 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 10.3.206.96 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 10.3.206.96 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 10.3.206.97 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 10.3.206.97 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 10.3.206.98 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 10.3.206.98 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 10.3.206.99 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 10.3.206.99 -j ACCEPT


iptables -I FORWARD -p tcp --dport 6380  -s 10.0.233.18 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 10.0.233.18 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 10.0.233.19 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 10.0.233.19 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 10.0.233.20 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 10.0.233.20 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 10.0.233.21 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 10.0.233.21 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 10.0.233.22 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 10.0.233.22 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 10.0.233.23 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 10.0.233.23 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 10.0.233.24 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 10.0.233.24 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 10.1.57.75 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 10.1.57.75 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 10.1.57.81 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 10.1.57.81 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 10.1.57.82 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 10.1.57.82 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 10.1.57.83 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 10.1.57.83 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 10.1.57.84 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 10.1.57.84 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 10.1.57.85 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 10.1.57.85 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 10.1.57.86 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 10.1.57.86 -j ACCEPT


# Save current firewall config
sudo iptables-save > /etc/iptables.conf

# Load iptables.conf on startup
echo 'iptables-restore < /etc/iptables.conf' >> /etc/rc.local
