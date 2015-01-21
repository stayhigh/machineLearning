#!/bin/bash

echo "@Downloading parallel from GNU site"
wget -c http://ftp.gnu.org/gnu/parallel/parallel-20100424.tar.bz2
echo "@Untar for parallel "
tar xvf parallel-20100424.tar.bz2
echo "@change dir into parallel "
cd parallel-20100424
./configure
make install

cd ../
echo "@Clean the parallel directory"
rm -rf parallel-20100424
echo "@Clean the parallel tar file "
rm parallel-20100424.tar.bz2
