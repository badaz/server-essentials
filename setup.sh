#!/bin/sh

###############
# marty setup #
###############

# packages
apt-get update
apt-get install -y php5-common php5-cli git zsh wget curl fail2ban tmux nodejs npm
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# nodejs
wget https://nodejs.org/dist/v4.2.2/node-v4.2.2-linux-x64.tar.gz
tar zxvf node-v4.2.2-linux-x64.tar.gz
rm node-v4.2.2-linux-x64.tar.gz
mv node-v4.2.2-linux-x64/ /usr/local/bin/
ln -s /usr/local/bin/node-v4.2.2-linux-x64/bin/node /usr/bin/node
ln -s /usr/local/bin/node-v4.2.2-linux-x64/bin/npm /usr/bin/npm

# composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# docker
# wget -qO- https://get.docker.com/ | sh
# curl -L https://github.com/docker/compose/releases/download/1.5.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
# chmod +x /usr/local/bin/docker-compose
