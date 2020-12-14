powershell -command Invoke-WebRequest "https://nodejs.org/dist/v14.15.1/node-v14.15.1-x64.msi" -OutFile .\node_installer.msi
.\node_installer.msi
del .\node_installer.msi
start cmd.exe @cmd /k "npm -g i telebit && telebit tcp 25565 && exit"
