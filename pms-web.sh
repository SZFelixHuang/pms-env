#!/bin/bash
if [ ! -n "$1" ] ;then
	pushd $(pwd)/pms.web/bin
else
	pushd $1/pms.web/bin
fi

bash run.sh
