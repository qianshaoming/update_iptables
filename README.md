使用ansible批量修改iptables

1、在被控端安装iptables
yum install iptables-services -y
systemctl start iptables.service  #启动iptables防火墙
systemctl enable iptables.service #设置防火墙开机启动

2、拷贝脚本到被控端
ansible webservers -m copy -a "src=/root/update_iptables.sh dest=/tmp/ mode=0755"

3、批量执行修改iptables的脚本
ansible webservers -m shell -a "/tmp/update_iptables.sh"
