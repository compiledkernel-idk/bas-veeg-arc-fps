@echo off
echo ========================================
echo   BAS VEEG ARC - PRIVATE SERVER
echo   Classmates Only - 13 Players Max
echo ========================================
echo.
echo Starting dedicated server...
echo Server will run on port 26000
echo.
echo Share your IP address with classmates!
echo.
pause

xonotic-dedicated.exe +exec server-classmates.cfg

pause
