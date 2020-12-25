#!/bin/bash
set -e
echo "Installing Nginx"
apt update
apt install -y nginx
ufw allow '${ufw_allow_nginx}'
systemctl enable nginx
systemctl restart nginx
echo "This is sample web server" > /var/www/html
