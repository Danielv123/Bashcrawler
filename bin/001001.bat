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