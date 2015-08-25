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