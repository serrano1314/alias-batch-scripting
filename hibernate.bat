@echo off
echo.
echo Hibernate:  %date% - %time:~0,5%
echo HIBERNATE: %date% - %time:~0,5% >> C:\alias-batch-scripting\hiber_log.txt
echo.
shutdown /h /f 
echo UP TO: %date% - %time:~0,5% >> C:\alias-batch-scripting\hiber_log.txt
