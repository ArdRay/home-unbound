#!/bin/sh
set -e
echo 'Script started.'
repository="https://github.com/ArdRay/home-unbound.git"
local="/var/repo/home-unbound.git"
rm -rf $local
git clone $repository $local
rm -rf /etc/unbound/unbound.conf.d/
mv /var/repo/home-unbound.git/unbound.conf.d /etc/unbound/
systemctl restart unbound.service
echo 'Script completed.'
