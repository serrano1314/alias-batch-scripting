@echo off
setlocal enabledelayedexpansion
for /f "tokens=*" %%f in ('DIR %~1 /A /b') do (
	set line=%%f
	set ext=!line:~-3,5!
	if exist %%f\nul (
		echo [94m %%f\[0m
	) else (
		set boolx=false
		if !ext! equ exe set boolx=true
		if !ext! equ bat set boolx=true
		if !ext! equ cmd set boolx=true
		if !ext! equ com set boolx=true
		if !boolx! equ true (
			echo [33m﩯!line![0m
		) else (
			echo [97m !line![0m
		)
	)
)
endlocal