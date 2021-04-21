@echo off
setlocal enabledelayedexpansion
setlocal

netsh wlan show profile > %temp%temp131416
echo.
echo [91mGET YOUR WIFI PASSWORD[0m
echo YOUR WIFI NETWORK/S:
for /f "tokens=*" %%g in (%temp%temp131416) do (
	set key=%%g
	set key=!key:~0,3!
	if !key! equ All (
		set line=%%g
		echo   [96m!line:~22,100![0m
	)
)
echo.
set /p var="TYPE THE WIFI NAME: "
netsh wlan show profile "%var%" key=clear > %temp%temp131416
for /f "tokens=*" %%g in (%temp%temp131416) do (
	set key=%%g:
	set key=!key:~0,3!
	if !key! equ Key (
		set password=%%g
		echo.
		echo PASSWORD [92m!password:~22,50![0m
	)
)
echo.
echo follow me at:
echo [95mhttps://github.com/serrano1314/^![0m
echo. 
echo.
pause
del %temp%temp131416
endlocal