@echo off
REM ========================================
REM   BAS VEEG ARC - UNINSTALLER
REM ========================================

echo.
echo ========================================
echo    UNINSTALL BAS VEEG ARC
echo ========================================
echo.
echo This will remove:
echo   - C:\Program Files\BasVeegArc\
echo   - Desktop shortcuts
echo   - Start Menu shortcuts
echo.
echo Your saved games and settings will be removed!
echo.
set /p confirm="Are you sure? (Y/N): "

if /i not "%confirm%"=="Y" (
    echo.
    echo Uninstall cancelled.
    pause
    exit
)

REM Check for admin rights
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Administrative permissions confirmed!
) else (
    echo.
    echo ERROR: You need to run this as Administrator!
    echo Right-click this file and select "Run as Administrator"
    echo.
    pause
    exit
)

echo.
echo Removing Bas Veeg Arc...
echo.

REM Remove desktop shortcuts
if exist "%USERPROFILE%\Desktop\Play Bas Veeg Arc.lnk" del "%USERPROFILE%\Desktop\Play Bas Veeg Arc.lnk"
if exist "%USERPROFILE%\Desktop\Host Bas Veeg Server.lnk" del "%USERPROFILE%\Desktop\Host Bas Veeg Server.lnk"

REM Remove Start Menu folder
if exist "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Bas Veeg Arc" rd /s /q "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Bas Veeg Arc"

REM Remove installation directory
cd /d "%TEMP%"
rd /s /q "C:\Program Files\BasVeegArc"

echo.
echo ========================================
echo    UNINSTALL COMPLETE!
echo ========================================
echo.
echo Bas Veeg Arc has been removed from your system.
echo.
echo Thanks for playing!
echo.
pause
