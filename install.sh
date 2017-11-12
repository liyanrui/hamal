#!/bin/sh

prefix=/usr/local

for script in hamal neville
do
    chmod a+x $script
    install $script $prefix/bin
done
