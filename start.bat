:game
rem This is the part of the loop chosing what part of the map you are in. Add more maps with the pattern described. (everything is copy/paste)
rem If you make a tile with custom activities like dungeons that may require variables, please add resets either to the home.bat file or just below this comment.


if %x%==1 if %y%==1 goto 001001
if %x%==1 if %y%==2 goto 001002
if %x%==1 if %y%==3 goto 001003
if %x%==1 if %y%==4 goto 001004
if %x%==1 if %y%==5 goto 001005
if %x%==1 if %y%==6 goto 001006
if %x%==1 if %y%==7 goto 001007
if %x%==1 if %y%==8 goto 001008
if %x%==1 if %y%==9 goto 001009
if %x%==2 if %y%==1 goto 002001
if %x%==2 if %y%==2 goto 002002



:001001
cls
rem 001001 is a debug value showing the levelID of the current level.
echo 001001
echo You are in a forest with trees. The path to the north and east is blocked.
echo.
echo Aviable commands:
echo west, south, explore, quit
rem Set variable to input allowing you to choose commands listed above.

set /p selection=">_ "

cls
rem Random hidden commands to avoid chrashing if someone didn't know the world was ending here.
if "%selection%" == "north" echo I just said that the path was blocked.
if "%selection%" == "north" echo You dumbass.
 
if "%selection%" == "east" echo The path is blocked by an ant.
if "%selection%" == "east" echo You suddenly feel a deep fear of small ants, and find yourself running away.
rem set /a x=%x%+1 increases the x/y coordinate you are currently at in the world. It goes down to the left, opposite of normal coordinates. Do the same with - to get north/east.
rem It determines where your character will be next time this script is initiated by the loop.
if "%selection%" == "west" set /a x=%x%+1
if "%selection%" == "west" echo You walked through a tight passage west of the forest.

if "%selection%" == "south" set /a y=%y%+1
if "%selection%" == "south" echo You walked through a wide passage south of the forest.

rem This is supposed to be a "spot check" uncovering hidden stuff like monsters, cool references or dungeons. (Maybe portals too?)
if "%selection%" == "explore" echo You found nothing to explore.

rem Quit the game. You should have understood this command without this comment.
if "%selection%" == "quit" goto quit

rem Delay to allow for reading whatever happened including all the puns. Using ping as some systems (including mine) doesen't support WAIT or TIMEOUT by default. Time in milliseconds.
PING 1.1.1.1 -n 1 -w 4000 >NUL
call save.bat

goto game

:001002
cls
echo 001002
echo You are in a wide open plain with grass on the ground.
echo The grass is green, but everything is very quiet.
echo.
echo Aviable commands:
echo north, west, explore, quit

set /p selection=">_ "

cls
if "%selection%" == "north" set /a y=%y%-1
if "%selection%" == "north" echo You walked through a wide passage north of the plains.
 
if "%selection%" == "east" echo The path is blocked by an invisible buffalo.
if "%selection%" == "east" echo You suddenly feel a deep fear of invisible buffalos, and calmly walk away.

if "%selection%" == "west" set /a x=%x%+1
if "%selection%" == "west" echo You just went for a stroll, and suddenly you were a tile farther west.

if "%selection%" == "south" rem set /a y=%y%+1
if "%selection%" == "south" echo There seems like there should be a passage here, but its probably not implemented just yet.

if "%selection%" == "explore" echo You can't see an invisible buffalo to the east and other than that there seems like there isn't much noteworthy.

if "%selection%" == "quit" goto quit

PING 1.1.1.1 -n 1 -w 4000 >NUL
call save.bat

rem goto game loops to the top of the page, repeating the level creation and everything else.
goto game



pause
rem This is the part about leaving the game for the menu screen.
:quit