SET RMR_ZONE_INFO '[{"addrs":"172.16.3.22:6380,172.16.3.34:6380,172.16.3.55:6380","prefix":"SZ","is_sentinel":true,"master_name":"mymaster"},{"addrs":"172.16.3.32:6380,172.16.3.15:6380,172.16.3.43:6380","prefix":"SH","is_sentinel":true,"master_name":"mymaster"}]'




SET RMR_ZONE_INFO '[{"addrs":"172.16.3.22:26380,172.16.3.34:26380,172.16.3.55:26380","prefix":"SZ","is_sentinel":true,"master_name":"mymaster"},{"addrs":"172.16.3.32:26380,172.16.3.35:26380,172.16.3.43:26380","prefix":"SH","is_sentinel":true,"master_name":"mymaster"}]'


docker load -i redis-server.tar 
docker load -i redis-sentinel.tar 
docker run -d --name redis --restart always -p 6380:6380 435bb8252b1e
docker run -d ——name sentinel --restart always -p 26380:26380 e77eec9f8bc8


sentinel monitor mymaster 172.16.3.22 6380 2

slaveof 172.16.3.22 6380



1:X 13 Jun 10:49:45.733 # +sdown master mymaster 172.16.3.22 6380
1:X 13 Jun 10:49:45.789 # +odown master mymaster 172.16.3.22 6380 #quorum 7/2
1:X 13 Jun 10:49:45.789 # +new-epoch 1
1:X 13 Jun 10:49:45.789 # +try-failover master mymaster 172.16.3.22 6380
1:X 13 Jun 10:49:45.793 # +vote-for-leader 5dc55fd6a7aaed60cac15c81bbdf54046d6216b5 1
1:X 13 Jun 10:49:45.793 # 13b6d8cb1c9a2c909b26ee7979e65efb33421596 voted for 5dc55fd6a7aaed60cac15c81bbdf54046d6216b5 1
1:X 13 Jun 10:49:45.793 # 9eaf888663a50689ea9a3a51f9443b32362a84fc voted for 5dc55fd6a7aaed60cac15c81bbdf54046d6216b5 1
1:X 13 Jun 10:49:45.793 # 5dc55fd6a7aaed60cac15c81bbdf54046d6216b5 voted for 5dc55fd6a7aaed60cac15c81bbdf54046d6216b5 1
1:X 13 Jun 10:49:45.793 # 81fa3e260724db5272a77292d4b2f5e96c0de665 voted for 5dc55fd6a7aaed60cac15c81bbdf54046d6216b5 1
1:X 13 Jun 10:49:45.793 # 477ec1a6454b67d2a2be66f7d65d2faa6f828a33 voted for 5dc55fd6a7aaed60cac15c81bbdf54046d6216b5 1
1:X 13 Jun 10:49:45.793 # 805a767001f31c59db89c2efcdf8d68ac747f3cb voted for 5dc55fd6a7aaed60cac15c81bbdf54046d6216b5 1
1:X 13 Jun 10:49:45.849 # +elected-leader master mymaster 172.16.3.22 6380
1:X 13 Jun 10:49:45.849 # +failover-state-select-slave master mymaster 172.16.3.22 6380
1:X 13 Jun 10:49:45.915 # +selected-slave slave 172.16.3.34:6380 172.16.3.34 6380 @ mymaster 172.16.3.22 6380
1:X 13 Jun 10:49:45.915 * +failover-state-send-slaveof-noone slave 172.16.3.34:6380 172.16.3.34 6380 @ mymaster 172.16.3.22 6380
1:X 13 Jun 10:49:46.015 * +failover-state-wait-promotion slave 172.16.3.34:6380 172.16.3.34 6380 @ mymaster 172.16.3.22 6380
1:X 13 Jun 10:49:46.635 # +promoted-slave slave 172.16.3.34:6380 172.16.3.34 6380 @ mymaster 172.16.3.22 6380
1:X 13 Jun 10:49:46.635 # +failover-state-reconf-slaves master mymaster 172.16.3.22 6380
1:X 13 Jun 10:49:46.681 * +slave-reconf-sent slave 172.16.3.55:6380 172.16.3.55 6380 @ mymaster 172.16.3.22 6380
1:X 13 Jun 10:49:47.338 * +slave-reconf-inprog slave 172.16.3.55:6380 172.16.3.55 6380 @ mymaster 172.16.3.22 6380
1:X 13 Jun 10:49:48.409 * +slave-reconf-done slave 172.16.3.55:6380 172.16.3.55 6380 @ mymaster 172.16.3.22 6380
1:X 13 Jun 10:49:48.470 # +failover-end master mymaster 172.16.3.22 6380
1:X 13 Jun 10:49:48.470 # +switch-master mymaster 172.16.3.22 6380 172.16.3.34 6380
1:X 13 Jun 10:49:48.470 * +slave slave 172.16.3.55:6380 172.16.3.55 6380 @ mymaster 172.16.3.34 6380
1:X 13 Jun 10:49:48.470 * +slave slave 172.16.3.22:6380 172.16.3.22 6380 @ mymaster 172.16.3.34 6380
1:X 13 Jun 10:50:17.249 # +new-epoch 2
1:X 13 Jun 10:50:18.103 # +config-update-from sentinel 477ec1a6454b67d2a2be66f7d65d2faa6f828a33 172.17.0.3 26380 @ mymaster 172.16.3.34 6380
1:X 13 Jun 10:50:18.103 # +switch-master mymaster 172.16.3.34 6380 172.16.3.55 6380
1:X 13 Jun 10:50:18.104 * +slave slave 172.16.3.22:6380 172.16.3.22 6380 @ mymaster 172.16.3.55 6380
1:X 13 Jun 10:50:18.104 * +slave slave 172.16.3.34:6380 172.16.3.34 6380 @ mymaster 172.16.3.55 6380
1:X 13 Jun 10:50:28.180 * +convert-to-slave slave 172.16.3.34:6380 172.16.3.34 6380 @ mymaster 172.16.3.55 6380
1:X 13 Jun 10:50:48.108 # +sdown slave 172.16.3.22:6380 172.16.3.22 6380 @ mymaster 172.16.3.55 6380
1:X 13 Jun 10:57:32.820 # -sdown slave 172.16.3.22:6380 172.16.3.22 6380 @ mymaster 172.16.3.55 6380
1:X 13 Jun 10:57:34.004 * +sentinel-address-switch master mymaster 172.16.3.55 6380 ip 172.17.0.2 port 26380 for 9eaf888663a50689ea9a3a51f9443b32362a84fc
1:X 13 Jun 10:58:04.019 # +sdown sentinel 9eaf888663a50689ea9a3a51f9443b32362a84fc 172.17.0.2 26380 @ mymaster 172.16.3.55 6380











1:X 13 Jun 10:52:48.020 # +sdown master mymaster 172.16.3.22 6380
1:X 13 Jun 10:52:48.079 # +odown master mymaster 172.16.3.22 6380 #quorum 4/2
1:X 13 Jun 10:52:48.079 # +new-epoch 1
1:X 13 Jun 10:52:48.079 # +try-failover master mymaster 172.16.3.22 6380
1:X 13 Jun 10:52:48.114 # +vote-for-leader 477ec1a6454b67d2a2be66f7d65d2faa6f828a33 1
1:X 13 Jun 10:52:48.114 # 9eaf888663a50689ea9a3a51f9443b32362a84fc voted for 477ec1a6454b67d2a2be66f7d65d2faa6f828a33 1
1:X 13 Jun 10:52:48.114 # 5dc55fd6a7aaed60cac15c81bbdf54046d6216b5 voted for 477ec1a6454b67d2a2be66f7d65d2faa6f828a33 1
1:X 13 Jun 10:52:48.114 # 477ec1a6454b67d2a2be66f7d65d2faa6f828a33 voted for 477ec1a6454b67d2a2be66f7d65d2faa6f828a33 1
1:X 13 Jun 10:52:48.185 # +elected-leader master mymaster 172.16.3.22 6380
1:X 13 Jun 10:52:48.185 # +failover-state-select-slave master mymaster 172.16.3.22 6380
1:X 13 Jun 10:52:48.256 # +selected-slave slave 172.16.3.55:6380 172.16.3.55 6380 @ mymaster 172.16.3.22 6380
1:X 13 Jun 10:52:48.256 * +failover-state-send-slaveof-noone slave 172.16.3.55:6380 172.16.3.55 6380 @ mymaster 172.16.3.22 6380
1:X 13 Jun 10:52:48.319 * +failover-state-wait-promotion slave 172.16.3.55:6380 172.16.3.55 6380 @ mymaster 172.16.3.22 6380
1:X 13 Jun 10:52:48.955 # +config-update-from sentinel 5dc55fd6a7aaed60cac15c81bbdf54046d6216b5 172.17.0.3 26380 @ mymaster 172.16.3.22 6380
1:X 13 Jun 10:52:48.955 # +switch-master mymaster 172.16.3.22 6380 172.16.3.34 6380
1:X 13 Jun 10:52:48.955 * +slave slave 172.16.3.55:6380 172.16.3.55 6380 @ mymaster 172.16.3.34 6380
1:X 13 Jun 10:52:48.955 * +slave slave 172.16.3.22:6380 172.16.3.22 6380 @ mymaster 172.16.3.34 6380
1:X 13 Jun 10:53:18.983 # +sdown master mymaster 172.16.3.34 6380
1:X 13 Jun 10:53:18.983 # +sdown slave 172.16.3.22:6380 172.16.3.22 6380 @ mymaster 172.16.3.34 6380
1:X 13 Jun 10:53:19.045 # +odown master mymaster 172.16.3.34 6380 #quorum 4/2
1:X 13 Jun 10:53:19.045 # +new-epoch 2
1:X 13 Jun 10:53:19.045 # +try-failover master mymaster 172.16.3.34 6380
1:X 13 Jun 10:53:19.083 # +vote-for-leader 477ec1a6454b67d2a2be66f7d65d2faa6f828a33 2
1:X 13 Jun 10:53:19.084 # 9eaf888663a50689ea9a3a51f9443b32362a84fc voted for 477ec1a6454b67d2a2be66f7d65d2faa6f828a33 2
1:X 13 Jun 10:53:19.084 # 5dc55fd6a7aaed60cac15c81bbdf54046d6216b5 voted for 477ec1a6454b67d2a2be66f7d65d2faa6f828a33 2
1:X 13 Jun 10:53:19.084 # 477ec1a6454b67d2a2be66f7d65d2faa6f828a33 voted for 477ec1a6454b67d2a2be66f7d65d2faa6f828a33 2
1:X 13 Jun 10:53:19.139 # +elected-leader master mymaster 172.16.3.34 6380
1:X 13 Jun 10:53:19.139 # +failover-state-select-slave master mymaster 172.16.3.34 6380
1:X 13 Jun 10:53:19.211 # +selected-slave slave 172.16.3.55:6380 172.16.3.55 6380 @ mymaster 172.16.3.34 6380
1:X 13 Jun 10:53:19.211 * +failover-state-send-slaveof-noone slave 172.16.3.55:6380 172.16.3.55 6380 @ mymaster 172.16.3.34 6380
1:X 13 Jun 10:53:19.287 * +failover-state-wait-promotion slave 172.16.3.55:6380 172.16.3.55 6380 @ mymaster 172.16.3.34 6380
1:X 13 Jun 10:53:20.167 # +promoted-slave slave 172.16.3.55:6380 172.16.3.55 6380 @ mymaster 172.16.3.34 6380
1:X 13 Jun 10:53:20.167 # +failover-state-reconf-slaves master mymaster 172.16.3.34 6380
1:X 13 Jun 10:53:20.189 * +slave-reconf-sent slave 172.16.3.22:6380 172.16.3.22 6380 @ mymaster 172.16.3.34 6380
1:X 13 Jun 10:53:20.189 # +failover-end master mymaster 172.16.3.34 6380
1:X 13 Jun 10:53:20.189 # +switch-master mymaster 172.16.3.34 6380 172.16.3.55 6380
1:X 13 Jun 10:53:20.190 * +slave slave 172.16.3.22:6380 172.16.3.22 6380 @ mymaster 172.16.3.55 6380
1:X 13 Jun 10:53:20.190 * +slave slave 172.16.3.34:6380 172.16.3.34 6380 @ mymaster 172.16.3.55 6380
1:X 13 Jun 10:53:50.269 # +sdown slave 172.16.3.22:6380 172.16.3.22 6380 @ mymaster 172.16.3.55 6380
1:X 13 Jun 10:53:50.269 # +sdown slave 172.16.3.34:6380 172.16.3.34 6380 @ mymaster 172.16.3.55 6380
1:X 13 Jun 11:00:35.144 # -sdown slave 172.16.3.22:6380 172.16.3.22 6380 @ mymaster 172.16.3.55 6380
1:X 13 Jun 11:00:36.279 * +sentinel-address-switch master mymaster 172.16.3.55 6380 ip 172.17.0.2 port 26380 for 9eaf888663a50689ea9a3a51f9443b32362a84fc
1:X 13 Jun 11:00:45.076 * +convert-to-slave slave 172.16.3.22:6380 172.16.3.22 6380 @ mymaster 172.16.3.55 6380
1:X 13 Jun 11:01:06.356 # +sdown sentinel 9eaf888663a50689ea9a3a51f9443b32362a84fc 172.17.0.2 26380 @ mymaster 172.16.3.55 6380


