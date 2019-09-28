#!/bin/sh
# git pull
cd ~/work/hakuraku
git pull origin master

# copy
cp -pr ~/work/hakuraku/docBase/* ~/web
