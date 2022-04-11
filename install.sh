#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install java
pip3 install --user --no-input picomc
picomc="Users/${USER}/Library/Python/3.8/bin/picomc"
$picomc account create $USER
touch /Applications/Minecraft
(echo "picomc=${picomc}\n$picomc play") > /Applications/Minecraft
chmod 700 /Applications/Minecraft
