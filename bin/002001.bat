cls
echo 002001
echo You are on a small plain with a dark, impenetrable forest to the north.
echo It looks scary and it seems like something may jump out at any moment. Maybe something of interest in there?
echo.
echo Aviable commands:
echo east, west, south, explore, quit

set /p selection=">_ "

cls
if "%selection%" == "north" echo You walk towards the dark forest, shaky of scaredness.
if "%selection%" == "north" echo As you hear some rustling to your right, you scream and run away out imto the safety of the plain.
 
if "%selection%" == "east" set /a x=%x%-1
if "%selection%" == "east" echo You walk through a small opening in the treeline towards another part of the forest. When it opens up, the plain is gone.

if "%selection%" == "west" rem set /a x=%x%+1
if "%selection%" == "west" echo You just went for a stroll, but then you saw a pair of bright yellow eyes appear out of the darkness. You decide that it will probably be safer to stay out for now, and walk another way. It looked like a dead end anyways.

if "%selection%" == "south" set /a y=%y%+1
if "%selection%" == "south" echo You walk away from the forrest into an even bigger plain.

if "%selection%" == "explore" echo You felt a sudden rush of adrenaline comming through your body. It was like you had to explore, and there was no way of stopping it. The only explorable place in this tile was the forest. Walking in you heard noises and cracking branches around you, and you were quite sure that some of them must have been from someone else, but the adrenaline in your veins keep you going. Deep into the forest you find a tomb, but its blocked, and you have to walk away.

if "%selection%" == "quit" goto quit

PING 1.1.1.1 -n 1 -w 4000 >NUL
call save.bat