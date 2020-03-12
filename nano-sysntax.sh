#https://devtidbits.com/2015/11/26/update-the-nano-text-editor-on-ubuntu/
sudo apt-get build-dep nano
sudo apt-get install libmagic-dev
cd downloads
wget https://www.nano-editor.org/dist/v4/nano-4.3.tar.gz
tar -xf nano-4.3.tar.gz
cd nano-4.3
./configure --enable-utf8
make
sudo apt-get remove nano
sudo make install
source ~/.zshrc
nano -V
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh
