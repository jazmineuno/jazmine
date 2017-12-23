Jazmine Blockchain

See https://jazmine.io/ for info.

This software is based on code from CryptoNote, Bytecoin and Monero, with some modifications and updates.

To BUILD:

```
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

At this moment you will need to edit two files, (after the build breaks).
We will fix the makefiles soon.

```
[ 76%] Linking CXX executable jazmined
/usr/bin/ld: cannot find -lupnpc-static
```

```
# vi src/CMakeFiles/Daemon.dir/link.txt
REMOVE -lunpnpc-static
BEFORE -lboost_system, ADD:
-L../external/miniupnpc -lminiupnpc
```

then run make again:
```
# make 
```

```
[ 98%] Linking CXX executable jazminewalletd
/usr/bin/ld: cannot find -lupnpc-static
```

```
# vi src/CMakeFiles/PaymentGateService.dir/link.txt
REMOVE -lunpnpc-static
BEFORE -lboost_system, ADD:
-L../external/miniupnpc -lminiupnpc
```

then run make again:
```
# make 
```

```
...
[100%] Building CXX object src/CMakeFiles/Miner.dir/Miner/main.cpp.o
[100%] Linking CXX executable jazmineminer
[100%] Built target Miner
```

Find the binaries:
```
# cd src
# ./jazmined
# ./jazminewallet
```
..etc..






