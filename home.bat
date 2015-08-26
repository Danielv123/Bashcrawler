:int
@echo off
@title The adventures of Batch
color 0a

:main
type menu.txt

set /p selection=">_ "

if "%selection%" == "new" goto newgame
if "%selection%" == "new game" goto newgame

if "%selection%" == "load" call savegame.cmd
if "%selection%" == "load game" call savegame.cmd

if "%selection%" == "about" call about.bat

if "%selection%" == "quit" goto quit
goto int
pause

:newgame
cls
echo Creating variables... (0/4)

echo set x=1 > savegame.cmd
echo Creating variables... (1/4)

echo set y=1 >> savegame.cmd
echo Creating variables... (2/4)

echo set playername=Batch >> savegame.cmd
echo Creating variables... (3/4)

echo call start.bat >> savegame.cmd
echo Finishing savegame... (4/4)
sleep 1
call savegame.cmd
goto int
pause
:quit