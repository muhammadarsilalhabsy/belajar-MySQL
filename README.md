
// check status
sudo service mysql status

// stop mysql
sudo systemctl stop mysql



// remove all mysql in our linux os
sudo apt-get purge mysql-server mysql-client mysql-common mysql-server-core-* mysql-client-core-*
sudo rm -rf /ect/mysql /var/lib/mysql /var/log/mysql
sudo apt autoremove
sudo apt autoclean 

lokasi penyimpanan dbeaver
/home/m19y/.local/share/DBeaverData/workspace6/General/Scripts/
