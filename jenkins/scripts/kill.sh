#!/usr/bin/env sh

echo 'The following command terminates the "npm start" process using its PID'
echo '(written to ".pidfile"), all of which were conducted when "deliver.sh"'
echo 'was executed.'
set -x
cd /root
kill $(cat .pidfile)

npm cache clean
rm -Rf ./node_modules
yes | cp -aRf * $WORKSPACE
