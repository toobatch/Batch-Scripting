@ECHO OFF
TITLE elevation Checker By TooBatch.com
:CheckAdminPriv
::running a command which requires elevation and redirecting the result to NUL !
NET FILE 1>NUL 2>NUL

::Checking the returned Error code and redirecting..
if '%errorlevel%' == '0' ( goto Admin ) else ( goto notAdmin )

:: The Script executed without elevation
:notAdmin
cls
COLOR 0C
ECHO     ================================
ECHO     =  Please run as Administrator =
ECHO     ================================
Pause

:: goto End Of File
goto :eof

:: The Script executed with elevation
:Admin
cls
COLOR 0A
ECHO     ====================================
ECHO     =  Script Executed with elevation  =
ECHO     ====================================

::Code to be executed..
:: ....................

pause