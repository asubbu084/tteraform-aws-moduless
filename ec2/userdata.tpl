#!/bin/bash
mkfs.ext4 /dev/xvdh
mount /dev/xvdh /mnt
echo /dev/xvdh /mnt defaults,nofail 0 2 >> /etc/fstab

yum -y install httpd
echo "my name is RAMAN KHANNA" >> /var/www/html/index.html
service httpd start
chkconfig httpd on