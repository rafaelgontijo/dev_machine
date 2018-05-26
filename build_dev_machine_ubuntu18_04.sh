#!/bin/bash

# Make sure only root can run our script
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

apt-get update
apt-get -y dist-upgrade
apt-get install -y git git-flow
apt-get install -y xclip
apt-get install -y build-essential python3-dev python-dev openssh-client curl
apt-get install -y --no-install-recommends autoconf automake bzip2 dpkg-dev file g++ gcc imagemagick libbz2-dev libc6-dev libcurl4-openssl-dev libdb-dev libevent-dev libffi-dev libgdbm-dev libgeoip-dev libglib2.0-dev libjpeg-dev libkrb5-dev liblzma-dev libmagickcore-dev libmagickwand-dev libncurses5-dev libncursesw5-dev libpng-dev libpq-dev libreadline-dev libsqlite3-dev libssl-dev libtool libwebp-dev libxml2-dev libxslt-dev libyaml-dev make patch xz-utils zlib1g-dev libmysqlclient-dev
apt-get install -y postgresql
apt-get install -y mysql-server
apt-get install -y redis-server
apt-get install -y nodejs npm
apt-get install -y vim
apt-get install -y fonts-droid-fallback fonts-noto fonts-noto-mono
apt-get install -y flatpak
apt-get install -y zsh
apt-get install -y docker.io
wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'
python get-pip.py --disable-pip-version-check --no-cache-dir
pip install virtualenvwrapper pipenv
snap install vscode --classic
snap install slack --classic
snap install atom --classic
snap install skype --classic
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt install -y ./google-chrome-stable_current_amd64.deb
wget https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb
apt install -y ./dbeaver-ce_latest_amd64.deb
usermod -aG docker $(whoami)
rm -f get-pip.py
rm -f google-chrome-stable_current_amd64.deb
rm -f dbeaver-ce_latest_amd64.deb
npm install gulp-cli -g
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
apt-get autoremove --purge -y
apt-get autoclean -y
apt-get clean -y
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp -f .zshrc ~/.zshrc
echo "Restart your machine" 1>&2
