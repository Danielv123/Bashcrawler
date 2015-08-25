:int
@echo off
@title The adventures of Batch
color 0a
if not exist savegame.cmd echo set x=1 > savegame.cmd
if not exist savegame.cmd echo set y=1 >> savegame.cmd 
:main
type menu.txt

set /p selection=">_ "
if "%selection%" == "start" call start.bat
if "%selection%" == "start game" call start.bat
if "%selection%" == "load" call savegame.cmd
if "%selection%" == "load game" call savegame.cmd






goto int
pause