#!/bin/bash

GPG_KEY_EMAIL=ikercasillas.sry@gmail.com

# Packages & Packages.gz
dpkg-scanpackages --multiversion . > Packages
gzip -k -f Packages

# Release, Release.gpg & InRelease
apt-ftparchive release . > Release
gpg --default-key "${GPG_KEY_EMAIL}" -abs -o - Release > Release.gpg
gpg --default-key "${GPG_KEY_EMAIL}" --clearsign -o - Release > InRelease

# Commit & push
git add -A
git commit -m "Update packages"
git push origin master
