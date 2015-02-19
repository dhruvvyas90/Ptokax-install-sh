#!/bin/bash

echo "Installing dependencies...."
sudo apt-get -y install g++ zlib1g-dev liblua5.1-dev liblua5.2-dev
echo "Done"
cd ~
echo "Downloading PtokaX 0.5.0.2 unix source..."
wget http://www.PtokaX.org/files/0.5.0.2-nix-src.tgz
echo "Done"
tar -xf 0.5.0.2-nix-src.tgz
cd PtokaX
make -j4		# run make lua52 if you wanna use lua5.2
echo "Installtation complete"
