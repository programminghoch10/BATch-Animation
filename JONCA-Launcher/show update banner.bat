@echo off
reg export HKCU\Console consolebackup.reg /y
reg delete HKCU\Console /v FontSize /f
reg add HKCU\Console /v FontSize /t REG_DWORD /d 179648
REM timeout /t 1
start "" "%cd%\display update banner.bat"
timeout /t 1
reg import consolebackup.reg