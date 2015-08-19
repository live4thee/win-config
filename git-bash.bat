@echo off

set gitdir=%USERPROFILE%\Downloads\portablegit
set path=%gitdir%\cmd;%path%

call "C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat" x64

start %gitdir%\git-bash.exe

@echo on
