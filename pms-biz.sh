#!/bin/bash
if [ ! -n "$1" ] ;then
	pushd $(pwd)/pms.biz/bin
else
	pushd $1/pms.biz/bin
fi

bash run.sh
