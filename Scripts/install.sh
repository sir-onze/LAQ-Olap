#!/bin/env bash

# Usage:
# $1 release name
# $2 version number
# $3 number of cores available

export MonetDB_rel=$1
export MonetDB_ver=$2
export MonetDB_base_dir=$HOME/MonetDB-$MonetDB_rel
export MonetDB_source_dir=$MonetDB_base_dir/MonetDB-$MonetDB_ver
export MonetDB_build_dir=$MonetDB_base_dir/BUILD
export MonetDB_prefix_dir=$MonetDB_base_dir

mkdir $MonetDB_base_dir
cd $MonetDB_base_dir

wget http://dev.monetdb.org/downloads/sources/$MonetDB_rel/MonetDB-$MonetDB_ver.tar.xz --no-check-certificate

tar xf MonetDB-$MonetDB_ver.tar.xz

mkdir $MonetDB_build_dir
cd $MonetDB_build_dir

$MonetDB_source_dir/configure --prefix=$MonetDB_prefix_dir --with-openssl=no --with-password-backend=no

make -j$3
make -j$3 install

export PATH=$MonetDB_prefix_dir/bin:$PATH
export MANPATH=$MonetDB_prefix_dir/share/man:$MANPATH
export CLASSPATH=$MonetDB_prefix_dir/share/monetdb/lib:$CLASSPATH
