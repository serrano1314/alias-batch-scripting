@echo off
setlocal enabledelayedexpansion
for /f "tokens=*" %%f in ('DIR %~1 /A /b') do (
	set file_icon=
	set line=%%f
	set ext=!line:~-3,5!
	set ext2=!line:~-2,5!
	set ext3=!line:~-4,5!
	if exist %%f\nul (
		if exist %%f\.git (
			echo [94m %%f\[0m
		) else (
			echo [94m %%f\[0m
		)
	) else (
		set boolx=false
		if !ext! equ exe set boolx=true
		if !ext! equ bat set boolx=true
		if !ext! equ cmd set boolx=true
		if !ext! equ com set boolx=true
		if !boolx! equ true (
			echo [33m !line![0m
		) else (
			if !ext! equ mp4 set file_icon=
			if !ext! equ mp3 set file_icon=
			if !ext3! equ flac set file_icon=
			if !ext! equ jpg set file_icon=
			if !ext! equ peg set file_icon=
			if !ext! equ .js set file_icon=
			if !ext! equ tml set file_icon=
			if !ext! equ css set file_icon=
			if !ext! equ psd set file_icon=
			if !ext! equ .ai set file_icon=
			if !ext! equ .py set file_icon=
			if !ext2! equ .c set file_icon=
			if !ext! equ cpp set file_icon=
			if !ext! equ pdf set file_icon=
			if !ext! equ txt set file_icon=
			if !ext3! equ docx set file_icon=
			if !ext3! equ pptx set file_icon=
			if !ext! equ ppt set file_icon=
			if !ext3! equ xlsx set file_icon=
			if !ext! equ zip set file_icon=
			if !ext! equ rar set file_icon=
			echo [97m!file_icon! !line![0m
		)
	)
)
endlocal