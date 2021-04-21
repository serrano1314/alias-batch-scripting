@echo off
setlocal enabledelayedexpansion
for /D %%s in (.\*) do (
	set line=%%s
	echo [34m!line:~2,100!\[0m
)

for %%f in (.\*) do (
	set line=%%f
	set exe_ext=!line:~-3,5!
	if !exe_ext! equ exe (
		echo [33m!line:~2,100![0m
	) else (
		echo !line:~2,100!
	)
)
endlocal