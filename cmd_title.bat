@echo off
for %%I in (.) do (
	set CurrPath=%%~dpI
	set CurrDirName=%%~nxI
)
if exist .git (
	set onGit=  
) else (
	set onGit=
)
title ⚡ %CurrDirName%
prompt $E[1;33;40m $d$s$b$t$h$h$h$s$s$_[97m$E[1;94;107m%CurrPath%$h[0m[97m[0m[97m$E[1;91;107m%CurrDirName%[95m%onGit%[0m[97m[0m$_$E[1;91;40m [97m