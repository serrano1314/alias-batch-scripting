@echo off
doskey cd = cd /d $* ^&^& "C:\alias-batch-scripting\cmd_title.bat"
for %%I in (.) do set CurrDirName=%%~nxI
title %CurrDirName%
