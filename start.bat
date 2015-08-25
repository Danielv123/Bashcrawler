:game
rem This is the part of the loop chosing what part of the map you are in. Add more maps with the pattern described. (everything is copy/paste)
rem If you make a tile with custom activities like dungeons that may require variables, please add resets either to the home.bat file or just below this comment.

if %x%==1 if %y%==1 call %cd%/bin/001001.bat
if %x%==1 if %y%==2 call %cd%/bin/001002.bat
if %x%==1 if %y%==3 call %cd%/bin/001003.bat
if %x%==1 if %y%==4 call %cd%/bin/001004.bat
if %x%==1 if %y%==5 call %cd%/bin/001005.bat
if %x%==1 if %y%==6 call %cd%/bin/001006.bat
if %x%==1 if %y%==7 call %cd%/bin/001007.bat
if %x%==1 if %y%==8 call %cd%/bin/001008.bat
if %x%==1 if %y%==9 call %cd%/bin/001009.bat
if %x%==2 if %y%==1 call %cd%/bin/002001.bat
if %x%==2 if %y%==2 call %cd%/bin/002002.bat

rem call game loops to the top of the page, repeating the level creation and everything else.

if "%selection%" == "quit" goto quit
goto game



pause
rem This is the part about leaving the game for the menu screen.
:quit