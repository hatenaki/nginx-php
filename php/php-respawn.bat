SET PHP_INI_SCAN_DIR=%CD%\conf.d
:respawn
  tasklist /FI "IMAGENAME eq nginx.exe" 2>NUL | FIND /I /N "nginx.exe">NUL
  IF NOT "%ERRORLEVEL%"=="0" GOTO exit
  php-cgi.exe -b 127.0.0.1:9000 -c php.ini
  GOTO respawn
:exit
EXIT