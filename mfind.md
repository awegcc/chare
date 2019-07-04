## muti-threads find
```
#!/bin/sh

srcfile="/tmp/find.$$"
dstdir="/tmp/MFindOut"
rm -rf $dstdir/*

find /baodan/EPDownload/ -maxdepth 1 -mindepth 1 -type d > $srcfile

echo $srcfile
echo $dstdir

xargs -a $srcfile -I NODE -P0 sh -c 'find NODE -type f -mtime -12 > /tmp/FindOut/out.$$'
```
