#!/bin/sh
rm -rf /Users/aodmin/Desktop/repo/.DS_Store
rm -rf /Users/aodmin/Desktop/repo/debs/.DS_Store

cd /Users/aodmin/Desktop/repo/

dpkg-scanpackages -m ./debs > Packages

bzip2 -5fkv Packages > Packages.bz2

xz -5fkev Packages > Packages.xz

xz -5fkev --format=lzma Packages > Packages.lzma
