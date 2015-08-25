:game

if %x%==1 if %y%==1 goto 001001
if %x%==1 if %y%==2 goto 001002




:001001
cls
echo 001001
echo You are in a forest with trees. The path tho the north and east is blocked.

set /p selection=">_ "

cls

if "%selection%" == "north" echo I just said that the path was blocked.
if "%selection%" == "north" echo You dumbass.
 
if "%selection%" == "east" echo The path is blocked by an ant.
if "%selection%" == "east" echo You suddenly feel a deep fear of small ants, and find yourself running away.

if "%selection%" == "west" set /a x=%x%+1
if "%selection%" == "west" echo You walked through a tight passage west of the forest.

if "%selection%" == "south" set /a y=%y%+1
if "%selection%" == "south" echo You walked through a wide passage south of the forest.

if "%selection%" == "explore" echo You found nothing to explore.
PING 1.1.1.1 -n 1 -w 4000 >NUL


goto game

:001002
cls
echo 001002

goto game





pause