@echo off

setlocal enabledelayedexpansion

mode 35, 10

title Import text to count.

set /p input_text=[:]

if "!input_text!"=="" (
    echo No text entered!
    timeout /t 3 >nul
    exit /b
)

set char_count=0
:COUNT_CHARS
if not "!input_text:~%char_count%,1!"=="" (
    set /a char_count+=1
    goto COUNT_CHARS
)

echo Character count: %char_count%
timeout /t 3 >nul
exit /b