#!/bin/bash
set -o nounset

sudo apt-get install git
cd ~

git clone https://github.com/wpeterson328/toolbox.git
sudo apt-get install puppet
sudo puppet apply ~/toolbox/setup/setup.pp

git clone https://github.com/wpeterson328/.vim.git
~/toolbox/setup.py

