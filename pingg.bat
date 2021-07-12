@echo off
set str=%*
if "%str%" equ "" (
	ping google.com
) else (
	ping %str%
)