@echo off
echo Malbolge Character Decoder
echo (C) Matt Seitter 2016
goto :main



:endq
echo C to close, [Enter] to Continue
set /P e=""
if /I "%e%" EQU "C" goto :kill
goto main

:main
echo.
set /p a="[c]: "
set /p c=" c : "
set /a "s=%a%+%c%"
set /a "o=%s% %% 94"
echo o = %o%
echo.
goto :endq

:kill
end