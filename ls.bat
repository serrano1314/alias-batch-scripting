@echo off
setlocal enabledelayedexpansion
for /f "tokens=*" %%s in ('DIR %~1 /A:D /b') do (
	set line=%%s
	echo [34m%%s\[0m
)
for /f "tokens=*" %%f in ('DIR %~1 /A:A-D /b') do (
	set line=%%f
	set ext=!line:~-3,5!
	set bool=false
	if !ext! equ exe set bool=true
	if !ext! equ bat set bool=true
	if !ext! equ cmd set bool=true
	if !ext! equ com set bool=true
	if !bool! equ true (
		echo [33m!line:~0,100![0m
	) else (
		echo !line:~0,100!
	)
)
endlocal