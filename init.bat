@ECHO OFF

SET needle=defaults\defaults.ini
IF NOT EXIST %needle% ECHO F | XCOPY defaults\%needle% %needle% /E /I >NUL
FOR /F %%f IN (%needle%) DO (
    IF NOT EXIST %%f ECHO F | XCOPY defaults\%%f %%f /E /I >NUL
)