@echo off
setlocal enabledelayedexpansion
for /f "tokens=*" %%f in ('DIR %~1 /A /b') do (
	set line=%%f
	set ext=!line:~-3,5!
	if exist %%f\nul (
		echo [46m [0m [94m%%f\[0m
	) else (
		set bool=false
		if !ext! equ exe set bool=true
		if !ext! equ bat set bool=true
		if !ext! equ cmd set bool=true
		if !ext! equ com set bool=true
		if !bool! equ true (
			echo [43m [0m [33m!line![0m
		) else (
			echo [47m [0m [97m!line![0m
		)
	)
)
endlocal