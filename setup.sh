#!/bin/sh

create_symlink() {
    flag=$1
    target=$2
    src=$3
    if [ ! ${flag} ${src} ]; then
	ln -s ${target} ${src}
    fi
}
create_symlink -f %3a64.chezscheme.sls lib/srfi/:64.sls
create_symlink -d %3a64 lib/srfi/:64
create_symlink -f %3a98.chezscheme.sls lib/srfi/:98.sls
create_symlink -d %3a98 lib/srfi/:98

