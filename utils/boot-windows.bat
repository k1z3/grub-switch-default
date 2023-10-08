@echo off

REM Set Windows the default boot (Script for Windows).

chcp 65001
cd /d "%~dp0/.."

wsl -d Ubuntu-22.04 sh -c "sed -i 's/\r//' ./main.sh && ./main.sh windows"

if %ERRORLEVEL% == 0 (
    timeout /nobreak 5
) else (
    pause
)
