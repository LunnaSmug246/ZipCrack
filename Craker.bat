@echo off
title Zipwn
color 3

:: Check if 7-Zip is installed
if not exist "C:\Program Files\7-Zip" (
    echo 7-Zip not installed!
    pause
    exit /b
)

echo.

:: Prompt for archive file
set /p archive="Enter Archive: "
if not exist "%archive%" (
    echo Archive not found!
    pause
    exit /b
)

:: Prompt for wordlist
set /p wordlist="Enter Wordlist: "
if not exist "%wordlist%" (
    echo Wordlist not found!
    pause
    exit /b
)

echo Cracking...
setlocal enabledelayedexpansion

:: Loop through each password in the wordlist
for /f "delims=" %%a in (%wordlist%) do (
    set "pass=%%a"
    "C:\Program Files\7-Zip\7z.exe" x -p!pass! "%archive%" -o"cracked" -y >nul 2>&1
    if !errorlevel! EQU 0 (
        echo Success! Password Found: !pass!
        pause
        exit /b
    )
    echo ATTEMPT: !pass!
)

echo All password attempts finished.
pause
exit /b
