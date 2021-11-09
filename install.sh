git clone https://github.com/sekrit-twc/zimg.git /usr/src/zimg
cd /usr/src/zimg
./autogen.sh
./configure
make
make install 
rm -rfv /usr/src/zimg

git clone -b R54 https://github.com/vapoursynth/vapoursynth.git /usr/src/vapoursynth
cd /usr/src/vapoursynth
./autogen.sh
./configure
make
make install
rm -rfv /usr/src/vapoursynth

git clone https://github.com/FFMS/ffms2.git /usr/src/ffms2
cd /usr/src/ffms2
./autogen.sh
./configure
make
make install
rm -rfv /usr/src/ffms2

git clone https://github.com/l-smash/l-smash.git /usr/src/lsmas
cd /usr/src/lsmas
./configure
make lib
make install-lib
rm -rfv /usr/src/lsmas

git clone https://github.com/AkarinVS/L-SMASH-Works.git /usr/src/lsmas
cd /usr/src/lsmas/VapourSynth
meson build
ninja -C build
rm -rfv /usr/src/lsmas
