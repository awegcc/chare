
tcpdump -n -S -s 0 -A 'tcp dst port 80' | grep -B3 -A10 "Server"
