@ECHO OFF

:: Stop nginx
tasklist /FI "IMAGENAME eq nginx.exe" 2>NUL | FIND /I /N "nginx.exe">NUL
IF NOT "%ERRORLEVEL%"=="0" GOTO stopped
CD nginx
nginx.exe -s quit
CD ..
:stopped

:: Stop php-cgi
taskkill /F /IM php-cgi.exe 2>NUL >NUL