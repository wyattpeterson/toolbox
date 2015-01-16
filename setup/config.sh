#!/bin/bash


cp -r ~/toolbox/config/* ~/.config

git config --local user.email "wyatt.peterson@gmail.com"
git config --local user.name "Wyatt"
git config --global push.default matching
