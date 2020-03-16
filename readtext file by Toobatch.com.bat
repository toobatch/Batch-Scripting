@ECHO OFF
:: Setting The Title
TITLE Read Text File By TooBatch.com
echo.
echo           #################################################
echo           ##                                             ##  
echo           ##     Read Text File By TooBatch.com          ##  
echo           ##                                             ##  
echo           #################################################
echo..............................................................................
echo.

:: Display Message :
echo File content:

::Enabling Delayed Expansion
setlocal enabledelayedexpansion
echo.
:: Creating a loop to read the file "list.txt"
for /f "tokens=1,2" %%a in (list.txt) do (
    :: Displaying file content line by line:
    echo %%a
)
::End Delayed Expansion
ENDLOCAL

echo.
PAUSE