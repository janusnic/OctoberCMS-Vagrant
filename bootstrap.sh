#!/usr/bin/env bash

#Get zip + unzip
apt-get install zip
apt-get install unzip

#Get OctoberCMS install Files
wget -O master.zip https://github.com/octobercms/install/archive/master.zip

#Move them into the www directory
mv master.zip /vagrant/www

#Unzip and delete
unzip /vagrant/www/master.zip -d /vagrant/www && rm -rf /vagrant/www/master.zip

#Move the contents up one level
mv -v /vagrant/www/install-master/* /vagrant/www/

#Delete the empty folder
rm -rf /vagrant/www/install-master

echo Good to go now! Just to localhost://8888/install.php in the browser