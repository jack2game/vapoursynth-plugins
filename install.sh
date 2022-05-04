mkdir -p /usr/local/lib/vapoursynth/

git clone -b v1.12.0 https://github.com/strukturag/libheif.git /usr/src/libheif
cd /usr/src/libheif
./autogen.sh
./configure
make
make install
cd /usr/src
rm -rfv /usr/src/libheif
ln -s /usr/local/lib/libheif.so /usr/local/lib/vapoursynth/libheif.so

git clone -b R1 https://github.com/vapoursynth/vs-imwri.git /usr/src/imwri
cd /usr/src/imwri
meson build
ninja -C build
cd /usr/src
cp /usr/src/imwri/build/libsubtext.so /usr/local/lib/vapoursynth/
rm -rfv /usr/src/imwri

git clone -b R3 https://github.com/vapoursynth/subtext.git /usr/src/subtext
cd /usr/src/subtext
meson build
ninja -C build
cd /usr/src
cp /usr/src/subtext/build/libsubtext.so /usr/local/lib/vapoursynth/
rm -rfv /usr/src/subtext

git clone -b 2.40 https://github.com/FFMS/ffms2.git /usr/src/ffms2
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

git clone -b vA.3i https://github.com/AkarinVS/L-SMASH-Works.git /usr/src/lsmasvs
cd /usr/src/lsmasvs/VapourSynth
meson build
ninja -C build
cd /usr/src
cp /usr/src/lsmasvs/VapourSynth/build/libvslsmashsource.so /usr/local/lib/vapoursynth/
rm -rfv /usr/src/lsmasvs

git clone -b v1.1 https://github.com/Irrational-Encoding-Wizardry/Vapoursynth-RemapFrames.git /usr/src/remap
cd /usr/src/remap
meson build
ninja -C build
cd /usr/src
cp /usr/src/remap/build/libremapframes.so /usr/local/lib/vapoursynth/
rm -rfv /usr/src/remap

git clone -b v2 https://github.com/dubhater/vapoursynth-fillborders.git /usr/src/fillborders
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

git clone -b r7 https://github.com/HomeOfAviSynthPlusEvolution/neo_f3kdb.git /usr/src/neo_f3kdb
cd /usr/src/neo_f3kdb
cmake -B build/gcc -S . -D_DIR=gcc
cmake --build build/gcc
cd /usr/src
cp /usr/src/neo_f3kdb/build/gcc/libneo-f3kdb.so /usr/local/lib/vapoursynth/
rm -rfv /usr/src/neo_f3kdb

git clone -b r3 https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Bilateral.git /usr/src/bilateral
cd /usr/src/bilateral
./configure
make
make install
cd /usr/src
rm -rfv /usr/src/bilateral

git clone -b v2 https://github.com/dubhater/vapoursynth-histogram.git /usr/src/histogram
cd /usr/src/histogram
./autogen.sh
./configure
make
make install
cd /usr/src
rm -rfv /usr/src/histogram
ln -s /usr/local/lib/libhistogram.so /usr/local/lib/vapoursynth/libhistogram.so

git clone -b r24 https://github.com/EleonoreMizo/fmtconv.git /usr/src/fmtconv
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

git clone -b v29 https://github.com/dubhater/vapoursynth-mvtools.git /usr/src/mvtools
cd /usr/src/mvtools
meson build
ninja -C build
cd /usr/src
cp /usr/src/mvtools/build/libmvtools.so /usr/local/lib/vapoursynth/
rm -rfv /usr/src/mvtools

git clone -b v12 https://github.com/dubhater/vapoursynth-nnedi3.git /usr/src/nnedi3
cd /usr/src/nnedi3
./autogen.sh
./configure
make
make install
cd /usr/src
rm -rfv /usr/src/nnedi3
ln -s /usr/local/lib/libnnedi3.so /usr/local/lib/vapoursynth/libnnedi3.so

git clone -b r6.1 https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Deblock.git /usr/src/Deblock
cd /usr/src/Deblock
./autogen.sh
./configure
make
make install
cd /usr/src
rm -rfv /usr/src/Deblock
ln -s /usr/local/lib/libdeblock.so /usr/local/lib/vapoursynth/libdeblock.so

git clone -b r2.1 https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DCTFilter.git /usr/src/DCTFilter
cd /usr/src/DCTFilter
./autogen.sh
./configure
make
make install
cd /usr/src
rm -rfv /usr/src/DCTFilter
ln -s /usr/local/lib/libdctfilter.so /usr/local/lib/vapoursynth/libdctfilter.so

git clone -b r7 https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DFTTest.git /usr/src/DFTTest
cd /usr/src/DFTTest
meson build
ninja -C build
cd /usr/src
cp /usr/src/DFTTest/build/libdfttest.so /usr/local/lib/vapoursynth/
rm -rfv /usr/src/DFTTest

git clone -b r10 https://github.com/HomeOfVapourSynthEvolution/VapourSynth-AddGrain.git /usr/src/AddGrain
cd /usr/src/AddGrain
meson build
ninja -C build
cd /usr/src
cp /usr/src/AddGrain/build/libaddgrain.so /usr/local/lib/vapoursynth/
rm -rfv /usr/src/AddGrain

git clone -b r4 https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Retinex.git /usr/src/Retinex
cd /usr/src/Retinex
meson build
ninja -C build
cd /usr/src
cp /usr/src/Retinex/build/libretinex.so /usr/local/lib/vapoursynth/
rm -rfv /usr/src/Retinex

git clone -b r14 https://github.com/HomeOfVapourSynthEvolution/VapourSynth-TCanny.git /usr/src/TCanny
cd /usr/src/TCanny
meson build
ninja -C build
cd /usr/src
cp /usr/src/TCanny/build/libtcanny.so /usr/local/lib/vapoursynth/
rm -rfv /usr/src/TCanny

wget -P /usr/local/lib/vapoursynth https://git.kageru.moe/attachments/b2b71f94-97d9-4e24-9d9d-f42bd22741b2
mv /usr/local/lib/vapoursynth/b2b71f94-97d9-4e24-9d9d-f42bd22741b2 /usr/local/lib/vapoursynth/libadaptivegrain_rs.so

pip3 install git+https://github.com/OpusGang/awsmfunc.git
pip3 install git+https://github.com/Irrational-Encoding-Wizardry/vsutil.git
pip3 install git+https://github.com/Irrational-Encoding-Wizardry/lvsfunc.git
pip3 install git+https://github.com/Ichunjo/vardefunc.git
pip3 install numpy
wget -P /python_module https://github.com/HomeOfVapourSynthEvolution/havsfunc/raw/master/havsfunc.py
wget -P /python_module https://github.com/HomeOfVapourSynthEvolution/mvsfunc/raw/master/mvsfunc.py
wget -P /python_module https://github.com/Irrational-Encoding-Wizardry/fvsfunc/raw/master/fvsfunc.py
wget -P /python_module https://github.com/Irrational-Encoding-Wizardry/kagefunc/raw/master/kagefunc.py
wget -P /python_module https://gitlab.com/Ututu/adptvgrnmod/-/raw/master/adptvgrnMod.py
wget -P /python_module https://github.com/jack2game/solarcurve/raw/main/solar.py
wget -P /python_module https://github.com/dubhater/vapoursynth-adjust/raw/master/adjust.py
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
