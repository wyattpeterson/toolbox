#!/bin/bash
set -o errexit
set -o nounset



#https://docs.docker.com/installation/ubuntulinux/
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9

echo deb https://get.docker.com/ubuntu docker main > /etc/apt/sources.list.d/docker.list
#apt-get update
apt-get install lxc-docker cgroup-lite apparmor 
service docker restart

#add my user to the docker group so i don't have to sudo all the time
usermod -a -G docker wyatt
