#!/bin/bash

# compress kernel source into sqfs for usage with overlayfs

if [ "$PN" == "gentoo-sources" ] ; then
    which mksquashfs || exit 0

	cd $D/usr/src
	mksquashfs linux-* sources-${PN}-${PV}.sqfs -comp xz 
	rm -rf linux-*
fi

