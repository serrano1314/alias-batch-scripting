@echo off
for %%I in (.) do set CurrDirName=%%~nxI
title %CurrDirName%
