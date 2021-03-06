#!/bin/sh

# Change SSH port to 130 by editing ssdh_config file
# For example change to: Port 130
vi /etc/ssh/sshd_config

# SELINUX only allow port 22 for ssh. Add new port context 130. If you have't installed do the following
yum -y install policycoreutils-python
semanage port -a -t ssh_port_t -p tcp 130

# Check the port context for ssh
semanage port -l | grep ssh

# Restart SSHD service
systemctl restart sshd.service

# Add the port to firewall
firewall-cmd --permanent --zone=public --add-port=130/tcp

# Reload firewall
firewall-cmd --reload

# Check listening
ss -tnlp|grep ssh

# Try connecting again trough ssh
# ssh root@<ipaddr> -p 130