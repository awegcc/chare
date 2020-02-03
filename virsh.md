virt-install \
 --name centos5.9 \
 --ram 1024 \
 --disk size=50 \
 --vcpus 2 \
 --os-type linux \
 --os-variant rhel5.9 \
 --network bridge=virbr0 \
 --graphics none \
 --console pty,target_type=serial \
 --location /home/CentOS-5.9-x86_64-bin-DVD-1of2.iso \
 --extra-args 'console=ttyS0,115200n8 serial'


virt-install \
 --name centos5.9 \
 --ram 1024 \
 --disk size=50 \
 --vcpus 2 \
 --os-type linux \
 --os-variant rhel5.9 \
 --network type=direct,source=em2,source_mode=bridge,model=virtio \
 --graphics none \
 --console pty,target_type=serial \
 --location /home/CentOS-5.9-x86_64-bin-DVD-1of2.iso \
 --extra-args 'console=ttyS0,115200n8 serial'
