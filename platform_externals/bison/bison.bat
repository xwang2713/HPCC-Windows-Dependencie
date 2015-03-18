@echo off
SETLOCAL
set localdir=%~dp0%
set BISON_PKGDATADIR=%localdir%data
path=%localdir%bin;%path%
%localdir%bin\bison.exe %*
ENDLOCAL

