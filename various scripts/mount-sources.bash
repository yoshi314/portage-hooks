#!/bin/bash

if [ $# -lt 1 ] ; then
    echo "$0 file.sqfs [basename]"
    echo "temporary dirs will be in ovfs/ "
    exit 1
fi

file=$1
base=${2:-$1}

mkdir -p ovfs/${base}-{lower,upper,work}
final=$(basename $file .sqfs)
mkdir $final

mount -t squashfs $file ovfs/${base}-lower

mount -t overlay overlay -olowerdir=ovfs/${base}-lower,upperdir=ovfs/${base}-upper,workdir=ovfs/${base}-work $final

