@echo off
echo [92mCalculator
echo [91mx - exit  [93mc - clear [0m
:loop
title Quick_CMD_Calculator
set /p res= 
if %res% equ x goto end
if %res% equ c (
	cls
	echo [92mCalculator
	echo [91mx - exit  [93mc - clear [0m
	)
>"%temp%\VBS.vbs" echo Set fso = CreateObject("Scripting.FileSystemObject") : Wscript.echo (%res%)
for /f "delims=" %%a in ('cscript /nologo "%temp%\VBS.vbs"') do set "res=%%a"
del "%temp%\VBS.vbs"
echo = %res%

goto loop
:end
echo QUICK_CALC by stvnsrrn
echo [93mhttps://www.github.com/serrano1314
title ⚡ %CurrDirName%