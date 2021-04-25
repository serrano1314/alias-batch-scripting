@echo off
echo.
echo Hibernate:  %date% - %time:~0,5%
echo %date% - %time:~0,5% >> hiber_log.txt
echo.
shutdown /h /f 
