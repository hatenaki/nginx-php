@ECHO OFF

:: Check defaults list, restore items if missing
CALL init.bat

:: Stop nginx and php-cgi
CALL stop.bat

:: Create $projects variable for nginx
SET projs=nginx\conf\projects.conf
SET needle=map "" $projects { default %CD:\=/%/projects; }
SET current=
IF EXIST %projs% FOR /F "delims=" %%c IN (%projs%) DO SET current=%%c
IF /i NOT "%current%"=="%needle%" <NUL (SET /P %current%=%needle%)>%projs%
SET projs=
SET needle=
SET current=

:: Run nginx
CD nginx
START "" nginx.exe
CD ..

:: Run php-cgi
CD php
RunHiddenConsole.exe php-respawn.bat
CD ..