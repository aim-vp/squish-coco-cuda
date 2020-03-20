#!/bin/bash -ex

# This file is sourced by build scripts to set visual studio environment for ninja build.

tmpdir=$(mktemp -d /tmp/vc_2017_env.XXXXXX)
echo 'call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\VC\Auxiliary\Build\vcvarsall.bat" x64 && set' >> "$tmpdir/vsvars.bat"            
cmd //c "$tmpdir/vsvars.bat" | \
    grep "^PATH=\|^INCLUDE=\|^LIB=\|^LIBPATH=" | \
    sed -e 's/\\/\//g' -e 's/[cC]:/\/c/g' -e 's/;/:/g' -e 's/:$//' | \
    sed -r 's/^(.*)=(.*)$/export \1="\2:${\1}"/' > $tmpdir/vs_env.sh
source $tmpdir/vs_env.sh
rm -rf "$tmpdir"
