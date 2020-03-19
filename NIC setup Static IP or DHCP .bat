@echo OFF
Title NIC Configurator by Toobatch.com

::Setting the NIC to be configured
set  NIC=Ethernet

:MainMenu
::Displayin The choices Menu
echo  Choose from list:
echo    [A] Set Static IP
echo    [B] Set DHCP
echo    [C] Exit
echo.

:: Asking the user to choose from the list, and redirecting according to his/her choice
SET /P C=[A,B,C]?
for %%? in (A) do if /I "%C%"=="%%?" goto A
for %%? in (B) do if /I "%C%"=="%%?" goto B
for %%? in (C) do if /I "%C%"=="%%?" goto end
:: if no choice selected or wrong one selected he'll be redirected to the menu again
goto MainMenu


:: Setting NIC with Static IP
:A
color b

:: Setting the IP address to be assigned
echo "Static IP Address: <IP>"
set IP_Addr=<IP>
echo.

:: Setting the gateway
echo "Default Gateway: <Gateway>"
set  D_Gate=<Gateway>
echo.

:: Setting the Netmask
echo "Subnet Mask: <Netmask>"
set  Sub_Mask=<Netmask>

::Setting Static IP Information
echo "Setting Static IP Information"
netsh interface ip set address "%NIC%" static %IP_Addr% %Sub_Mask% %D_Gate% 1

::Setting DNS address 1
echo "Setting DNS Settings <DNS1>"
netsh interface ip add dns name="%NIC%" addr=<DNS1>

::Setting DNS address 2
echo "Setting DNS Settings <DNS2>"
netsh interface ip add dns name="%NIC%" addr=<DNS2> index=2

::Setting DNS address 3
echo "Setting DNS Settings <DNS3>"
netsh interface ip add dns name="%NIC%" addr=<DNS3> index=3

::Setting DNS address 4
echo "Setting DNS Settings <DNS4>"
netsh interface ip add dns name="%NIC%" addr=<DNS4> index=4

::Setting DNS address 5
echo "Setting DNS Settings <DNS5>"
netsh interface ip add dns name="%NIC%" addr=<DNS5> index=5

:: Displaying the NIC confifuration after the assignement:
ipconfig
pause
cls
goto MainMenu

:: Setting NIC to DHCP
:B
color A
ECHO Resetting NIC to DHCP

::Resetting IP configuration to DHCP
netsh int ip set address "%NIC%" dhcp

::Resetting DNS configuration to DHCP
netsh int ip set dns "%NIC%" dhcp

::Renewing the IP
ipconfig /renew

::Displaying the current IP configuration after Change
ECHO Here are the new settings for %computername%:
ipconfig

pause
cls
goto MainMenu

:end
