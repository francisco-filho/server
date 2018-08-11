#!/bin/bash

yum install libjpeg libpng-devel libpng libjpeg-devel

./configure --prefix=/portal/tools
make
make install
