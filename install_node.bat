@echo off
echo Downloading Node.js installer (29.1MB)
powershell -command Invoke-WebRequest "https://nodejs.org/dist/v14.15.1/node-v14.15.1-x64.msi" -OutFile .\node_installer.msi
echo Installing Node.js
.\node_installer.msi
del .\node_installer.msi
echo Refreshing PATH
for /f "tokens=3*" %%A in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v Path') do set syspath=%%A%%B
for /f "tokens=3*" %%A in ('reg query "HKCU\Environment" /v Path') do set userpath=%%A%%B
set PATH=%userpath%;%syspath%
echo Installing TCP tunnelling utility
npm -g i telebit
telebit tcp 25565
