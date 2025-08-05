@echo off
title Store DLL Helper
color 0A

:: Check if running as administrator
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo This script requires Administrator privileges.
    echo Right-click on this file and select "Run as Administrator"
    echo.
    pause
    exit /b 1
)

:menu
cls
echo ========================================
echo         Store DLL Helper
echo ========================================
echo.
echo Choose an option:
echo.
echo 1. Take Ownership of DLL files
echo 2. Open File Locations
echo 3. Exit
echo.
set /p "choice=Enter your choice (1-3): "

if "%choice%"=="1" goto takeownership
if "%choice%"=="2" goto openfolders
if "%choice%"=="3" goto exit
goto menu

:takeownership
cls
echo ========================================
echo         Taking Ownership
echo ========================================
echo.
echo This will take ownership and grant Administrators full control to:
echo.
echo C:\Windows\System32\Windows.ApplicationModel.Store.dll
echo C:\Windows\SysWOW64\Windows.ApplicationModel.Store.dll
echo.
echo Continue? (Y/N)
set /p "confirm="
if /i "%confirm%"=="Y" (
    echo.
    echo Taking ownership of System32 DLL...
    takeown /f "C:\Windows\System32\Windows.ApplicationModel.Store.dll" /a
    icacls "C:\Windows\System32\Windows.ApplicationModel.Store.dll" /grant administrators:F
    
    echo Taking ownership of SysWOW64 DLL...
    takeown /f "C:\Windows\SysWOW64\Windows.ApplicationModel.Store.dll" /a
    icacls "C:\Windows\SysWOW64\Windows.ApplicationModel.Store.dll" /grant administrators:F
    
    echo.
    echo Ownership and permissions updated successfully!
    echo.
    pause
) else (
    echo Operation cancelled.
    timeout /t 2 >nul
)
goto menu

:openfolders
cls
echo ========================================
echo         Opening File Locations
echo ========================================
echo.
echo Opening both folder locations in File Explorer...
echo.
echo You can now manually copy your patched DLL files to replace the originals.
echo.
start "" explorer "C:\Windows\System32"
timeout /t 1 /nobreak >nul
start "" explorer "C:\Windows\SysWOW64"
echo.
echo Folders opened!
echo.
echo Press any key to return to menu...
pause >nul
goto menu

:exit
echo.
echo Goodbye!
timeout /t 2 >nul
exit 