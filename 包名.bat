@echo off&setlocal enabledelayedexpansion
echo ----filename----------
dir /S/B *.apk /b
echo ----包名信息----------
for /f "delims=" %%i in ('dir /S/B *.apk /b') do aapt dump badging  %%~si |findstr "package"
pause