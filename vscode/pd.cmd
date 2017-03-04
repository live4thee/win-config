@echo off
setlocal
call "%~dp0\pandoc.exe" --latex-engine=xelatex --toc --smart -V mainfont="PingFang SC" %*
endlocal