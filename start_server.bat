@echo off
set /p ram="Server RAM (e.g. 2G): "
java -Xms%ram% -jar forge-1.12.2-14.23.5.2854.jar nogui
