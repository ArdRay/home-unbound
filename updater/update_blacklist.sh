#!/bin/bash
echo 'Updater started.'
echo 'server:' > ../config/blacklist.conf
curl --silent https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts | grep '^0\.0\.0\.0' | awk '{print "  local-zone: \""$2"\" redirect\n  local-data: \""$2" A 0.0.0.0\""}' >> ../config/blacklist.conf
echo 'Updater finished.'
