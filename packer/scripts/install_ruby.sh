#!/bin/bash
rm /var/lib/apt/lists/lock
rm /var/cache/apt/archives/lock
rm /var/lib/dpkg/lock
rm /var/lib/dpkg/lock-frontend
dpkg --configure -a
apt-get update

apt install -y ruby-full ruby-bundler build-essential
