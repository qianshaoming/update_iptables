#!/bin/bash

iptables -I INPUT -m state --state NEW -m tcp -p tcp --dport 80 -j ACCEPT #给防火墙开放80端口
service iptables save   #保存规则
systemctl restart iptables #重启防火墙
