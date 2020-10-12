#!/bin/bash
cd bin
chmod 600 id_rsa*
ssh-add id_rsa
if [ -d "./wildfly-15.0.0.Final" ]; then
     cd  wildfly-15.0.0.Final
     git pull
     cd ..
else
     git clone felix-huang@vs-ssh.visualstudio.com:v3/felix-huang/DevOps/wildfly-15.0.0.Final
fi
MACHINE_TYPE="$(uname)"
if [ "${MACHINE_TYPE}" == "Darwin" ]; then
    if [ -d "./jdk-11.0.1_mac" ]; then
        cd  jdk-11.0.1_mac
        git pull
        cd ..
    else
        git clone felix-huang@vs-ssh.visualstudio.com:v3/felix-huang/DevOps/jdk-11.0.1_mac
    fi
else
    if [ -d "./jdk-11.0.1_linux" ]; then
        cd  jdk-11.0.1_linux
        git pull
        cd ..
    else
        git clone felix-huang@vs-ssh.visualstudio.com:v3/felix-huang/DevOps/jdk-11.0.1_linux
    fi
fi
find ./ -type f -iname "*.sh" -exec chmod +x {} \;