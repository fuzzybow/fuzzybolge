@echo off
echo Malbolge Character Encoder
echo (C) Matt Seitter 2016
goto :main

:endq
echo C to close, [Enter] to Continue
set /P e=""
if /I "%e%" EQU "C" goto :kill
goto main

:main
set /p o=" o : "
set /p c=" c : "
set /a "s=%o%-%c%"
set /a "a=%s% %% 94"
if /I "%a%" LSS "33" set /a "a=%a%+94"
echo [c] = %a%
echo.
goto :endq

:kill
end