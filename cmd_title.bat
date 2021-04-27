@echo off
for %%I in (.) do (
	set CurrPath=%%~dpI
	set CurrDirName=%%~nxI
)
title ⚡ %CurrDirName%
prompt $E[1;33;40m$d$s$b$t$h$h$h$s$s$_$E[1;96;40m%CurrPath%$E[1;95;4m%CurrDirName%[0m$E[1;91;40m$_$$~[97m

