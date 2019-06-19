SET PHP_INI_SCAN_DIR=%CD%\conf.d
SET nginx_pid=..\nginx\logs\nginx.pid
IF NOT EXIST %nginx_pid% EXIT
FOR /F "delims=" %%p IN (%nginx_pid%) DO SET nginx_pid=%%p
:respawn
  tasklist /FI "IMAGENAME eq nginx.exe" /FI "PID eq %nginx_pid%" 2>NUL | FIND /I /N "nginx.exe">NUL
  IF NOT "%ERRORLEVEL%"=="0" EXIT
  php-cgi.exe -b 127.0.0.1:9000 -c php.ini
  GOTO respawn
EXIT