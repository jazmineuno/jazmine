Jazmine Blockchain

See https://jazmine.io/ for info.

This software is based on code from CryptoNote, Bytecoin and Monero, with some modifications and updates.

To BUILD:

```
# apt-get install libboost-all-dev
# apt-get install build-essential
# apt-get install cmake
# apt-get install git
```

To build create 'build' directory and run cmake:

```
# mkdir build
# cd build
# cmake ..
# make
```
(optionally make -j4, -j8 etc depending on # of cores)


```
...
[100%] Building CXX object src/CMakeFiles/Miner.dir/Miner/main.cpp.o
[100%] Linking CXX executable jazmineminer
[100%] Built target Miner
```

Find the binaries: (in build/src directory)
```
# cd src
# ./jazmined
# ./jazminewallet
```
..etc..


