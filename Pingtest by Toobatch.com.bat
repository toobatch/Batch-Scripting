@ECHO OFF
:: Setting The Title
TITLE Ping Test By TooBatch.com
echo.
echo           #################################################
echo           ##                                             ##  
echo           ##          Ping test By TooBatch.com          ##  
echo           ##                                             ##  
echo           #################################################
echo.

:: Setting the host to check it.

::set host=www.google.com

set /p host=" Enter the hostname : "

echo    Pinging %host%..
::Pinging the defined host (%host%) and checking if pingability!
%SystemRoot%\system32\ping.exe -n 1 %host% | find "bytes=32" > NUL

:: Checking the returned error level:
    if not errorlevel 1 (
        :: If error code doesn't Equal 1 it means the host is pingable
        echo      ###########       %host% is up ^& pingable
        :: Displaying Ping result..
        %SystemRoot%\system32\ping.exe %host%
    ) else (            
        :: If error code Equals 1 it means the host is pingable                   
        echo      ###########       %host% is Unreachable.!!
    )
echo.

PAUSE