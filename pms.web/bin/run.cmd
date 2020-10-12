@echo off
setlocal
set binPath=%~dp0
set basePath=%binPat%/../..
set BIN_HOME=%basePath%/bin
set JAVA_HOME=%basePath%/bin/jdk-11.0.1_windows
set JBOSS_HOME=%basePath%/bin/wildfly-15.0.0.Final

pushd %binPath%/../

set pms_home_dir=%~dp0../
set pms_conf_dir=configuration/pms

set CLASSPATH=%JAVA_HOME%/lib;%$CLASSPATH%
set PATH=%JBOSS_HOME%/bin;%$PATH%

pushd %binPath%

"./Wrapper.exe" -c "../configuration/wrapper_windows.conf"
