#! /bin/bash
brew install openssl libuv cmake zlib
git clone https://github.com/uWebSockets/uWebSockets 
cd uWebSockets
git checkout e94b6e1
patch CMakeLists.txt < ../cmakepatch.txt
mkdir build
export PKG_CONFIG_PATH=/usr/local/opt/openssl/lib/pkgconfig 
cd build
cmake -DOPENSSL_ROOT_DIR=/Users/caolingfei/Desktop/Self-driving-car-interest-group/self-driving-car-Nanodegree/anaconda/pkgs/openssl-1.0.2k-1 2 -DOPENSSL_LIBRARIES=/Users/caolingfei/Desktop/Self-driving-car-interest-group/self-driving-car-Nanodegree/anaconda/pkgs/openssl-1.0.2k-1 2/lib ..
sudo make install
cd ..
cd ..
sudo rm -r uWebSockets
