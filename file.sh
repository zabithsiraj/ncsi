#!/bin/bash
sudo apt update && sudo apt upgrade -y
sudo apt install curl wget unzip nano ufw gnupg software-properties-common -y
sudo apt install apache2 -y
sudo systemctl enable apache2
sudo systemctl start apache2
sudo apt install ca-certificates apt-transport-https lsb-release -y
sudo add-apt-repository ppa:ondrej/php -y
sudo apt update
sudo apt install php8.2 php8.2-cli php8.2-common php8.2-mbstring php8.2-mysql php8.2-xml php8.2-curl php8.2-zip php8.2-bcmath -y
curl -fsSL https://deb.nodesource.com/setup_22.x | sudo -E bash - sudo apt install -y nodejs
sudo npm install -g pm2
cd ~
php -r "copy('https://getcomposer.org/installer',
'composer-setup.php');"
php composer-setup.php --install-dir=/usr/local/bin --filename=composer
composer --version
