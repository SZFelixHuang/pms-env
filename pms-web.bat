@echo off
title pms-web server for PMS

setlocal
set basePath=%~dp0

call %basePath%\pms.web\bin\run.cmd
popd
endlocal