@ECHO OFF

CALL disable.bat

SET script=%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs
ECHO Set oWS = WScript.CreateObject("WScript.Shell") >> %script%
ECHO sLinkFile = "%link%" >> %script%
ECHO Set oLink = oWS.CreateShortcut(sLinkFile) >> %script%
ECHO oLink.TargetPath = "%CD%\start.bat" >> %script%
ECHO oLink.WorkingDirectory = "%CD%" >> %script%
ECHO oLink.Save >> %script%

cscript /nologo %script%
DEL %script%