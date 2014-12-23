@echo off

call "\Program Files (x86)\Microsoft Visual Studio 11.0\vc\vcvarsall.bat" x86

C:
chdir C:\cygwin\bin


start mintty -w max /bin/bash --login -i
