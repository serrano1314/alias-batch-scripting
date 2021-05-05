@echo off
for %%I in (.) do (
	set CurrPath=%%~dpI
	set CurrDirName= %%~nxI 
)
if exist .git (
	set onGit= $h 
) else (
	set onGit=
)
title ⚡ %CurrDirName%
prompt $E[1;33;40m  $d$s$b$t$h$h$h$s$s$_[30m$E[1;94;100m$E[1;0;100m %CurrPath%$h$E[1;30;47m $E[1;95;47m%CurrDirName%[34m%onGit%[;97;0m[0m$_$E[1;91;40m [97m