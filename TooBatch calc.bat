@ECHO OFF
:: Setting The Title
TITLE Calculator By TooBatch.com
echo.
echo           #################################################
echo           ##                                             ##  
echo           ##          Calculator By TooBatch.com         ##  
echo           ##                                             ##  
echo           #################################################
echo.


:: Asking the user to enter the 1st & 2nd numbers & storing them in variables named "firstnum" & "secondnum".
set /p firstnum=" Enter the 1st number : "
set /p secondnum=" Enter the 2nd number : "
cls
:: Displaying and asking the user to choose the operation
:operation
echo.
echo           ##############################
echo           ##                          ##
echo           ##  Addition        :  +    ##   
echo           ##  Subtraction     :  -    ##   
echo           ##  Multiplication  :  *    ##   
echo           ##  Division        :  /    ## 
echo           ##                          ##
echo           ##############################

:: Asking user to enter the operation:
set /p operation=" Please enter the operation: (%firstnum% ? %secondnum% ) "

:: Making the operation: SET /A used to do the operation:
if '%operation%'=='+' SET /A result=%firstnum% + %secondnum%
if '%operation%'=='-' SET /A result=%firstnum% - %secondnum%
if '%operation%'=='*' SET /A result=%firstnum% * %secondnum%
if '%operation%'=='/' SET /A result=%firstnum% / %secondnum%
cls 
:: Displaying the result:
echo.
echo           ##########################################################
echo           ##                                                      ##  
echo           ##          Calculator By TooBatch.com                  ##  
echo           ##  Thank you for visiting our blog www.toobatch.com    ##  
echo           ##########################################################
echo.
echo                    The Result :
echo           ##############################
echo           ##           %firstnum%
echo           ##           %operation%
echo           ##           %secondnum%
echo           ##----------------------------
echo           ##           %result%
echo           ############################## 

pause