@echo off
title pms-biz server for PMS
setlocal
set basePath=%~dp0

call %basePath%\pms.biz\bin\run.cmd
popd
endlocal