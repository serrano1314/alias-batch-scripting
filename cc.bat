@echo off
>"%temp%\VBS.vbs" echo Set fso = CreateObject("Scripting.FileSystemObject") : Wscript.echo (%*)
for /f "delims=" %%a in ('cscript /nologo "%temp%\VBS.vbs"') do set "val=%%a"
del "%temp%\VBS.vbs"
echo [92m%val% [0m
