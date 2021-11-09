git clone https://github.com/FFMS/ffms2.git /usr/src/ffms2
cd /usr/src/ffms2
./autogen.sh
./configure
make
make install
cd /usr/src
rm -rfv /usr/src/ffms2
ln -s /usr/local/lib/libffms2.so /usr/local/lib/vapoursynth/libffms2.so

git clone https://github.com/l-smash/l-smash.git /usr/src/lsmas
cd /usr/src/lsmas
./configure
make lib
make install-lib
cd /usr/src
rm -rfv /usr/src/lsmas

git clone https://github.com/AkarinVS/L-SMASH-Works.git /usr/src/lsmas
cd /usr/src/lsmas/VapourSynth
meson build
ninja -C build
cd /usr/src
rm -rfv /usr/src/lsmas

pip3 install git+https://git.concertos.live/AHD/awsmfunc.git

pip3 install numpy

#git clone https://code.videolan.org/videolan/x264/ /usr/src/x264
#cd /usr/src/x264
#./configure
#make
#make install
#cd /usr/src
#rm -rfv /usr/src/lsmas
