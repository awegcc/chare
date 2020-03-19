### tcpdump http
tcpdump -n -S -s 0 -A 'tcp dst port 80' | grep -B3 -A10 "Server"


tcpdump -n -S -s 0 -A 'tcp and host 172.16.3.24 and port 9020'



