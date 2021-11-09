git clone https://github.com/FFMS/ffms2.git /usr/src/ffms2
cd /usr/src/ffms2
./autogen.sh
./configure
make
make install
rm -rfv /usr/src/ffms2
ln -s /usr/local/lib/libffms2.so /usr/local/lib/vapoursynth/libffms2.so

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
