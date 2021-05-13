::must have droidsans nerd font
@echo off
for %%I in (.) do (
	set CurrPath=%%~dpI
	set CurrDirName= %%~nxI 
)
if exist .git (
	set onGit= $h 
	@git rev-parse --abbrev-ref HEAD> %temp%\branchtemp
	for /f "delims=" %%i in (%temp%\branchtemp) do set branch= %%i
) else (
	set onGit=
	set branch=
)
::if exist branchtemp del %temp%\branchtemp
title ⚡ %CurrDirName%
netsh interface show interface | findstr /C:"Wi-Fi" > %temp%/tempWifiStatus
for /f "delims=" %%I in (%temp%/tempWifiStatus) do set wifiStatus=%%I
set wifiStatus=%wifiStatus:~15,10%
if %wifiStatus% equ Connected ( 
	set wifiStatus=[0;92;100m直[0m
) else ( 
	set wifiStatus=[0;91;100m睊[0m
)
prompt $E[1;30;40m$E[1;33;100m  %USERNAME% $E[0;0;100m %wifiStatus%$E[0;96;100m $d  $t$E[1;30;40m$h$h$h$_$E[1;30;40m$E[1;94;100m  $E[0;0;100m %CurrPath%$h$E[1;30;47m $E[0;95;47m%CurrDirName%[34m%onGit%[32m%branch%$E[0;47;40m[0m$_$E[0;91;40m[0;97;0m