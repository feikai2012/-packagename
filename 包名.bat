@echo off&setlocal enabledelayedexpansion
echo ----filename----------
dir /S/B *.apk /b
echo ----������Ϣ----------
for /f "delims=" %%i in ('dir /S/B *.apk /b') do aapt dump badging  %%~si |findstr "package"
pause