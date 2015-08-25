:int

title The trip
color 0a
echo off
cls

:main
type menu.txt

set /p selection=">_ "
if "%selection%" == "start" set x=1
if "%selection%" == "start" set y=1
if "%selection%" == "start" call %selection%.bat








goto int
pause