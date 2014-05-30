#!/bin/sh

export INSTDIR=/usr/local/libevent-2.0.21-gnu

CC=gcc ./configure --prefix=${INSTDIR}

make 2>&1 | tee make.log
make check 2>&1 | tee make_check.log
