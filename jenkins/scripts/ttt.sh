#!/usr/bin/env sh

pwd
whoami
cp -R * /root
rm package.json
cd /root
chmod 755 ./jenkins/scripts/ttt.sh
ls -al ./jenkins/scripts/
pwd
npm install
