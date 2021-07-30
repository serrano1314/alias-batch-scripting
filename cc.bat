@echo off
echo x = exit
echo c = clear
:loop
set /p res=
>"%temp%\VBS.vbs" echo Set fso = CreateObject("Scripting.FileSystemObject") : Wscript.echo (%res%)
for /f "delims=" %%a in ('cscript /nologo "%temp%\VBS.vbs"') do set "res=%%a"
del "%temp%\VBS.vbs"
echo [92m%res% [0m
if %res% equ x goto end
if %res% equ c (
	cls
	echo x = exit
	echo c = clear
	)
goto loop
:end