#! /bin/bash

apt-get -y update
apt-get -y install apache2
systemctl enable --now apache2
sed -i 's/Listen 80/Listen 0.0.0.0:80/' /etc/apache2/ports.conf
systemctl restart apache2
echo "Hello world" > /var/www/html/index.html
