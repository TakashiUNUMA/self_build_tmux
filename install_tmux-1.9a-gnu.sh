#!/bin/sh

export INSTDIR=/usr/local/tmux-1.9a-gnu
export LIBEVENT=/usr/local/libevent-2.0.21-gnu

CC=gcc ./configure --prefix=${INSTDIR} CFLAGS="-I${LIBEVENT}/include" LDFLAGS="-L${LIBEVENT}/lib"

make 2>&1 | tee make.log
