
# 测试环境数据库集群(sh,sz)所有机器上添加iptables规则
iptables -I FORWARD ! -s 172.17.0.0/16 -p tcp --dport 6380  -j DROP
iptables -I FORWARD ! -s 172.17.0.0/16 -p tcp --dport 26380 -j DROP

iptables -I FORWARD -p tcp --dport 6380  -s 55.12.209.130 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 55.12.209.130 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 55.12.209.131 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 55.12.209.131 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 55.12.209.132 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 55.12.209.132 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 55.12.209.133 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 55.12.209.133 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 55.12.209.134 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 55.12.209.134 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 55.12.209.135 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 55.12.209.135 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 99.12.222.184 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 99.12.222.184 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 99.12.222.185 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 99.12.222.185 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 99.12.222.187 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 99.12.222.187 -j ACCEPT

iptables -I FORWARD -p tcp --dport 6380  -s 99.13.38.153 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 99.13.38.153 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 99.13.38.154 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 99.13.38.154 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 99.13.38.155 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 99.13.38.155 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 99.13.38.156 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 99.13.38.156 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 99.13.38.157 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 99.13.38.157 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 99.13.38.158 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 99.13.38.158 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 99.12.222.167 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 99.12.222.167 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 99.12.222.168 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 99.12.222.168 -j ACCEPT
iptables -I FORWARD -p tcp --dport 6380  -s 99.12.222.249 -j ACCEPT
iptables -I FORWARD -p tcp --dport 26380 -s 99.12.222.249 -j ACCEPT

# Save current firewall config
sudo iptables-save > /etc/iptables.conf

# Load iptables.conf on startup
echo 'iptables-restore < /etc/iptables.conf' >> /etc/rc.local