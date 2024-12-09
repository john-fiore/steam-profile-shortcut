@echo off
title Steam Profile Shortcut
color 0A

:main
type data\ascii.txt
echo.
echo Enter desired Steam ID, or enter 'exit' to quit.
echo.
set /p sid= Enter Steam ID: 
if /i "%sid%"=="exit" exit
if /i "%sid%"=="" goto fail

start steam://openurl/https://steamcommunity.com/profiles/%sid%
if errorlevel 1 goto fail
goto success

:success
powershell -Command "Write-Host '[SUCCESS]' -ForegroundColor Green; Write-Host 'Steam profile opened in client successfully.'"
pause
cls
goto main

:fail
powershell -Command "Write-Host '[FAIL]' -ForegroundColor Red; Write-Host 'Unable to open profile. Try again and double check your ID.'"
pause
cls
goto main

:: 2007 award for most basic-ass script