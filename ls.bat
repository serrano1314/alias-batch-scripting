@echo off
setlocal enabledelayedexpansion
for /f "tokens=*" %%s in ('DIR /A:D /b') do (
	set line=%%s
	echo [34m%%s\[0m
)

for %%f in (.\*) do (
	set line=%%f
	set ext=!line:~-3,5!
	set bool=false
	if !ext! equ exe set bool=true
	if !ext! equ bat set bool=true
	if !ext! equ cmd set bool=true
	if !bool! equ true (
		echo [33m!line:~2,100![0m
	) else (
		echo !line:~2,100!
	)
)
endlocal