@ECHO OFF

SET link=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\nginx-php.lnk
IF EXIST "%link%" DEL "%link%"