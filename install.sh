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
./configure --enable-shared
make lib
make install-lib
cd /usr/src
rm -rfv /usr/src/lsmas
ln -s /usr/local/lib/liblsmash.so /usr/local/lib/vapoursynth/liblsmash.so

git clone https://github.com/AkarinVS/L-SMASH-Works.git /usr/src/lsmasvs
cd /usr/src/lsmasvs/VapourSynth
meson build
ninja -C build
cd /usr/src
cp /usr/src/lsmasvs/VapourSynth/build/libvslsmashsource.so /usr/local/lib/vapoursynth/
rm -rfv /usr/src/lsmasvs

pip3 install git+https://git.concertos.live/AHD/awsmfunc.git
pip3 install numpy

#git clone https://code.videolan.org/videolan/x264/ /usr/src/x264
#cd /usr/src/x264
#./configure --enable-shared
#make
#make install
#cd /usr/src
#rm -rfv /usr/src/lsmas

# git clone https://github.com/ffmpeg/ffmpeg.git /usr/src/ffmpeg
# cd /usr/src/ffmpeg
# ./configure --enable-gpl --enable-libx264 --enable-avresample --enable-shared --enable-libfdk-aac --enable-nonfree
# make
# make install
#cd /usr/ffmpeg
#rm -rfv /usr/src/ffmpeg
