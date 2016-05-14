@echo off
reg export HKCU\Console consolebackup.reg /y
reg delete HKCU\Console /v FontSize /f
reg add HKCU\Console /v FontSize /t REG_DWORD /d 179648
start "" "%cd%\display jonca banner.bat"
timeout /t 2
reg import consolebackup.reg