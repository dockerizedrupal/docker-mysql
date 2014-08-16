#!/bin/sh

apt-get update
apt-get -y install mysql-server

mysql_install_db

service mysql start

mysqladmin -u root password "root"

ls /etc/puppet/manifests -la

puppet module install puppetlabs-mysql