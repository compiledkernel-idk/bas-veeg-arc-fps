@echo off
REM ========================================
REM   BAS VEEG ARC - WINDOWS INSTALLER
REM   Installs game and creates shortcuts
REM ========================================

echo.
echo ========================================
echo    BAS VEEG ARC - FPS EDITION
echo    13 Classmates Battle!
echo ========================================
echo.
echo This will install the game to:
echo C:\Program Files\BasVeegArc\
echo.
echo And create shortcuts on your Desktop!
echo.
pause

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
echo Installing Bas Veeg Arc...
echo.

REM Create installation directory
if not exist "C:\Program Files\BasVeegArc" mkdir "C:\Program Files\BasVeegArc"

REM Copy all files to Program Files
echo Copying game files (1.7 GB, please wait...)
xcopy "%~dp0\*" "C:\Program Files\BasVeegArc\" /E /I /Y /Q

if errorlevel 1 (
    echo.
    echo ERROR: Failed to copy files!
    pause
    exit
)

echo.
echo Creating desktop shortcuts...
echo.

REM Create Play Game shortcut on Desktop
powershell -Command "$WshShell = New-Object -comObject WScript.Shell; $Shortcut = $WshShell.CreateShortcut('%USERPROFILE%\Desktop\Play Bas Veeg Arc.lnk'); $Shortcut.TargetPath = 'C:\Program Files\BasVeegArc\PLAY-BAS-VEEG-ARC.bat'; $Shortcut.WorkingDirectory = 'C:\Program Files\BasVeegArc'; $Shortcut.Description = 'Bas Veeg Arc - 13 Classmates FPS'; $Shortcut.Save()"

REM Create Server shortcut on Desktop
powershell -Command "$WshShell = New-Object -comObject WScript.Shell; $Shortcut = $WshShell.CreateShortcut('%USERPROFILE%\Desktop\Host Bas Veeg Server.lnk'); $Shortcut.TargetPath = 'C:\Program Files\BasVeegArc\START-CLASSMATES-SERVER.bat'; $Shortcut.WorkingDirectory = 'C:\Program Files\BasVeegArc'; $Shortcut.Description = 'Host Bas Veeg Arc Private Server'; $Shortcut.Save()"

REM Create Start Menu shortcuts
if not exist "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Bas Veeg Arc" mkdir "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Bas Veeg Arc"

powershell -Command "$WshShell = New-Object -comObject WScript.Shell; $Shortcut = $WshShell.CreateShortcut('%APPDATA%\Microsoft\Windows\Start Menu\Programs\Bas Veeg Arc\Play Bas Veeg Arc.lnk'); $Shortcut.TargetPath = 'C:\Program Files\BasVeegArc\PLAY-BAS-VEEG-ARC.bat'; $Shortcut.WorkingDirectory = 'C:\Program Files\BasVeegArc'; $Shortcut.Save()"

powershell -Command "$WshShell = New-Object -comObject WScript.Shell; $Shortcut = $WshShell.CreateShortcut('%APPDATA%\Microsoft\Windows\Start Menu\Programs\Bas Veeg Arc\Host Server.lnk'); $Shortcut.TargetPath = 'C:\Program Files\BasVeegArc\START-CLASSMATES-SERVER.bat'; $Shortcut.WorkingDirectory = 'C:\Program Files\BasVeegArc'; $Shortcut.Save()"

powershell -Command "$WshShell = New-Object -comObject WScript.Shell; $Shortcut = $WshShell.CreateShortcut('%APPDATA%\Microsoft\Windows\Start Menu\Programs\Bas Veeg Arc\Uninstall.lnk'); $Shortcut.TargetPath = 'C:\Program Files\BasVeegArc\UNINSTALL.bat'; $Shortcut.WorkingDirectory = 'C:\Program Files\BasVeegArc'; $Shortcut.Save()"

echo.
echo ========================================
echo    INSTALLATION COMPLETE!
echo ========================================
echo.
echo Game installed to: C:\Program Files\BasVeegArc\
echo.
echo Desktop shortcuts created:
echo   - Play Bas Veeg Arc
echo   - Host Bas Veeg Server
echo.
echo Start Menu folder created:
echo   - Bas Veeg Arc (with all shortcuts)
echo.
echo ========================================
echo.

REM Ask to launch game
set /p launch="Launch game now? (Y/N): "
if /i "%launch%"=="Y" (
    echo.
    echo Launching Bas Veeg Arc...
    cd "C:\Program Files\BasVeegArc"
    start "" "PLAY-BAS-VEEG-ARC.bat"
) else (
    echo.
    echo You can launch the game from:
    echo   - Desktop shortcut
    echo   - Start Menu
    echo   - C:\Program Files\BasVeegArc\PLAY-BAS-VEEG-ARC.bat
)

echo.
echo Have fun playing with your classmates!
echo.
pause
