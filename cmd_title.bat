@echo off

set isgit=
set Myvar=
SET /a count=20
setlocal enabledelayedexpansion
for /l %%a in (0,1,%count%) do (
	
	if EXIST !Myvar!.git (
		endlocal
		set isgit=true
		goto :break
	) 
	call set "Myvar=%%Myvar%%..\" 
)
endlocal
:break

for %%I in (.) do (
	set CurrPath=%%~dpI
	set CurrDirName= %%~nxI
)

set onGit= [34m 
set status=

if "%isgit%" equ "true" (
	git status -s> %temp%\gitstatus
	@git rev-parse --abbrev-ref HEAD> %temp%\branchtemp
	for /f "delims=" %%i in (%temp%\branchtemp) do set branch= %%i
	for /f "tokens=1" %%g in (%temp%\gitstatus) do set status=%%g
	
) else (
	set onGit=
	set branch=
	set status=
	set isgit=
)
::if exist branchtemp del %temp%\branchtemp
if "%status%" neq "" ( 
	set onGit= [31m 
	set status=
)
title %CurrDirName%

prompt $E[1;33;44m  %USERNAME% $E[0;34;40m$E[1;30;40m%wifiStatus%$E[0;96;100m $d  $t$E[1;30;40m$h$h$h$_$E[1;30;40m$E[1;94;100m  $E[0;0;100m %CurrPath%$h$E[1;30;47m $E[0;95;47m%CurrDirName%%onGit%[32m%branch%$E[0;47;40m[0m$_$E[0;91;40m [0;97;0m
