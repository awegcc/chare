
# prod环境数据库集群(sh,sz)所有机器上添加iptables规则
iptables -t nat -I PREROUTING -p tcp ! -s 172.17.0.0/16 --dport 6380  -j DNAT --to 2.2.2.2
iptables -t nat -I PREROUTING -p tcp ! -s 172.17.0.0/16 --dport 26380 -j DNAT --to 2.2.2.2

iptables -t nat -I PREROUTING -p tcp --dport 6380  -s 10.4.130.84 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 26380 -s 10.4.130.84 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 6380  -s 10.4.130.85 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 26380 -s 10.4.130.85 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 6380  -s 10.4.130.86 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 26380 -s 10.4.130.86 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 6380  -s 10.4.130.87 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 26380 -s 10.4.130.87 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 6380  -s 10.4.130.88 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 26380 -s 10.4.130.88 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 6380  -s 10.4.130.89 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 26380 -s 10.4.130.89 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 6380  -s 10.4.130.90 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 26380 -s 10.4.130.90 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 6380  -s 10.3.206.91 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 26380 -s 10.3.206.91 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 6380  -s 10.3.206.94 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 26380 -s 10.3.206.94 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 6380  -s 10.3.206.95 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 26380 -s 10.3.206.95 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 6380  -s 10.3.206.96 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 26380 -s 10.3.206.96 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 6380  -s 10.3.206.97 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 26380 -s 10.3.206.97 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 6380  -s 10.3.206.98 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 26380 -s 10.3.206.98 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 6380  -s 10.3.206.99 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 26380 -s 10.3.206.99 -j DOCKER


iptables -t nat -I PREROUTING -p tcp --dport 6380  -s 10.0.233.18 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 26380 -s 10.0.233.18 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 6380  -s 10.0.233.19 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 26380 -s 10.0.233.19 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 6380  -s 10.0.233.20 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 26380 -s 10.0.233.20 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 6380  -s 10.0.233.21 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 26380 -s 10.0.233.21 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 6380  -s 10.0.233.22 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 26380 -s 10.0.233.22 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 6380  -s 10.0.233.23 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 26380 -s 10.0.233.23 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 6380  -s 10.0.233.24 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 26380 -s 10.0.233.24 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 6380  -s 10.1.57.75 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 26380 -s 10.1.57.75 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 6380  -s 10.1.57.81 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 26380 -s 10.1.57.81 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 6380  -s 10.1.57.82 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 26380 -s 10.1.57.82 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 6380  -s 10.1.57.83 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 26380 -s 10.1.57.83 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 6380  -s 10.1.57.84 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 26380 -s 10.1.57.84 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 6380  -s 10.1.57.85 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 26380 -s 10.1.57.85 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 6380  -s 10.1.57.86 -j DOCKER
iptables -t nat -I PREROUTING -p tcp --dport 26380 -s 10.1.57.86 -j DOCKER


# Save current firewall config
sudo iptables-save > /etc/iptables.conf

# Load iptables.conf on startup
echo 'iptables-restore < /etc/iptables.conf' >> /etc/rc.local
