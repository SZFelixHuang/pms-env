#!/bin/bash
binPath=$(pwd)
basePath=$binPath/../..
BIN_HOME=$basePath/bin
JBOSS_HOME=$basePath/bin/wildfly-15.0.0.Final

MACHINE_TYPE="$(uname)"

if [ "${MACHINE_TYPE}" == "Darwin" ];
then
JAVA_HOME=$basePath/bin/jdk-11.0.1_mac
else
JAVA_HOME=$basePath/bin/jdk-11.0.1_linux
fi

pushd $binPath/../

export pms_home_dir=$(pwd)
export pms_conf_dir=configuration/pms

export CLASSPATH=$JAVA_HOME/lib:$CLASSPATH
export PATH=$JBOSS_HOME/bin:$PATH

pushd $binPath

if [ "${MACHINE_TYPE}" == "Darwin" ];
then
"./wrapper-mac" -c "../configuration/wrapper_mac.conf"
else
"./wrapper-linux" -c "../configuration/wrapper_linux.conf"
fi
