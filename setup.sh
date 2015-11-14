#!/bin/sh

###############
# marty setup #
###############

# packages
apt-get update
apt-get install -y php5-common php5-cli git zsh wget curl fail2ban tmux nodejs npm
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# nodejs
apt-get install nodejs npm
ln -s /usr/bin/nodejs /usr/bin/node

# composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# docker
# wget -qO- https://get.docker.com/ | sh
# curl -L https://github.com/docker/compose/releases/download/1.5.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
# chmod +x /usr/local/bin/docker-compose
