#https://devtidbits.com/2015/11/26/update-the-nano-text-editor-on-ubuntu/
sudo apt-get build-dep nano
sudo apt-get install libmagic-dev
cd downloads
wget http://www.nano-editor.org/dist/v2.9/nano-2.9.3.tar.gz
tar -xf nano-2.9.3.tar.gz
cd nano-2.9.3
./configure --enable-utf8
make
sudo apt-get remove nano
sudo make install
source ~/.zshrc
nano -V
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh
