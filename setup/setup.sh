#!/bin/bash
set -o nounset

apt-get install git
cd ~

git clone https://github.com/wpeterson328/toolbox.git
apt-get install puppet
puppet apply ~/toolbox/setup/setup.pp

git clone https://github.com/wpeterson328/.vim.git
~/toolbox/setup.py
