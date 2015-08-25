:game
rem This is the part of the loop chosing what part of the map you are in. Add more maps with the pattern described. (everything is copy/paste)
rem If you make a tile with custom activities like dungeons that may require variables, please add resets either to the home.bat file or just below this comment.


if %x%==1 if %y%==1 call 001001
if %x%==1 if %y%==2 call 001002
if %x%==1 if %y%==3 call 001003
if %x%==1 if %y%==4 call 001004
if %x%==1 if %y%==5 call 001005
if %x%==1 if %y%==6 call 001006
if %x%==1 if %y%==7 call 001007
if %x%==1 if %y%==8 call 001008
if %x%==1 if %y%==9 call 001009
if %x%==2 if %y%==1 call 002001
if %x%==2 if %y%==2 call 002002

rem call game loops to the top of the page, repeating the level creation and everything else.
if "%selection%" == "quit" goto quit else goto game



pause
rem This is the part about leaving the game for the menu screen.
:quit