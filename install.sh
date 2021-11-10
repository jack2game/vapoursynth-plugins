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

git clone https://github.com/Irrational-Encoding-Wizardry/Vapoursynth-RemapFrames.git /usr/src/remap
cd /usr/src/remap
meson build
ninja -C build
cd /usr/src
cp /usr/src/remap/build/libremapframes.so /usr/local/lib/vapoursynth/
rm -rfv /usr/src/remap

git clone https://github.com/dubhater/vapoursynth-fillborders.git /usr/src/fillborders
cd /usr/src/fillborders
meson build
ninja -C build
cd /usr/src
cp /usr/src/fillborders/build/libfillborders.so /usr/local/lib/vapoursynth/
rm -rfv /usr/src/fillborders

git clone https://gitlab.com/Ututu/VS-ContinuityFixer.git /usr/src/cf
cd /usr/src/cf
g++ -c -std=gnu++11 -fPIC -I. -o continuity.o continuity.cpp
g++ -shared -fPIC -o libcf.so continuity.o
cd /usr/src
cp /usr/src/cf/libcf.so /usr/local/lib/vapoursynth/
rm -rfv /usr/src/cf

git clone https://github.com/HomeOfAviSynthPlusEvolution/neo_f3kdb.git /usr/src/neo_f3kdb
cd /usr/src/neo_f3kdb
cmake -B build/gcc -S . -D_DIR=gcc
cmake --build build/gcc
cd /usr/src
cp /usr/src/neo_f3kdb/build/gcc/libneo-f3kdb.so /usr/local/lib/vapoursynth/
rm -rfv /usr/src/neo_f3kdb

git clone https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Bilateral.git /usr/src/bilateral
cd /usr/src/bilateral
./configure
make
make install
cd /usr/src
rm -rfv /usr/src/bilateral

git clone -b v1.0 https://github.com/dubhater/vapoursynth-histogram.git /usr/src/histogram
cd /usr/src/histogram
./autogen.sh
./configure
make
make install
cd /usr/src
rm -rfv /usr/src/histogram
ln -s /usr/local/lib/libhistogram.so /usr/local/lib/vapoursynth/libhistogram.so

git clone https://github.com/EleonoreMizo/fmtconv.git /usr/src/fmtconv
cd /usr/src/fmtconv/build/unix
./autogen.sh
./configure
make
make install
cd /usr/src
rm -rfv /usr/src/fmtconv
ln -s /usr/local/lib/libfmtconv.so /usr/local/lib/vapoursynth/libfmtconv.so

wget -P /python_module https://github.com/HomeOfVapourSynthEvolution/havsfunc/archive/refs/tags/r33.zip
cd /python_module
unzip r33.zip
rm r33.zip
cp /python_module/havsfunc-r33/havsfunc.py /python_module/havsfunc.py
rm -rfv /python_module/havsfunc-r33

git clone https://github.com/dubhater/vapoursynth-mvtools.git /usr/src/mvtools
cd /usr/src/mvtools
meson build
ninja -C build
cd /usr/src
cp /usr/src/mvtools/build/libmvtools.so /usr/local/lib/vapoursynth/
rm -rfv /usr/src/mvtools

git clone https://github.com/dubhater/vapoursynth-nnedi3.git /usr/src/nnedi3
cd /usr/src/nnedi3
./autogen.sh
./configure
make
make install
cd /usr/src
rm -rfv /usr/src/nnedi3
ln -s /usr/local/lib/libnnedi3.so /usr/local/lib/vapoursynth/libnnedi3.so

pip3 install git+https://git.concertos.live/AHD/awsmfunc.git
pip3 install git+https://github.com/Irrational-Encoding-Wizardry/vsutil.git
#pip3 install git+https://github.com/Irrational-Encoding-Wizardry/lvsfunc.git
#pip3 install git+https://github.com/Ichunjo/vardefunc.git
pip3 install numpy
# wget -P /python_module https://github.com/HomeOfVapourSynthEvolution/havsfunc/raw/master/havsfunc.py
wget -P /python_module https://github.com/Irrational-Encoding-Wizardry/fvsfunc/raw/master/fvsfunc.py
wget -P /python_module https://github.com/Irrational-Encoding-Wizardry/kagefunc/raw/master/kagefunc.py
wget -P /python_module https://gitlab.com/Ututu/adptvgrnmod/-/raw/master/adptvgrnMod.py
wget -P /python_module https://github.com/jack2game/solarcurve/raw/main/solar.py
wget -P /python_module https://github.com/dubhater/vapoursynth-adjust/raw/master/adjust.py
wget -P /python_module https://github.com/HomeOfVapourSynthEvolution/mvsfunc/raw/master/mvsfunc.py
#wget -P /python_module https://github.com/encodingguy/docker-encode/raw/python3.9/function/pterfunc.py

#git clone https://code.videolan.org/videolan/x264/ /usr/src/x264
#cd /usr/src/x264
#./configure --enable-shared
#make
#make install
#cd /usr/src
#rm -rfv /usr/src/lsmas

#git clone https://github.com/ffmpeg/ffmpeg.git /usr/src/ffmpeg
#cd /usr/src/ffmpeg
#./configure --enable-gpl --enable-libx264 --enable-avresample --enable-shared --enable-libfdk-aac --enable-nonfree
#make
#make install
#cd /usr/ffmpeg
#rm -rfv /usr/src/ffmpeg
