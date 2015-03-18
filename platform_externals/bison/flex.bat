@echo off
SETLOCAL
set localdir=%~dp0%
path=%localdir%bin;%path%
set m4=%localdir%bin\m4.exe
%localdir%bin\flex.exe %*
ENDLOCAL

