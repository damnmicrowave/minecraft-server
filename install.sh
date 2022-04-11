#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

brew install java
brew install python
/usr/local/bin/pip3 install --user --no-input picomc
picomc="/usr/local/bin/picomc"
$picomc account create $USER
touch /Applications/Minecraft
(echo -e "picomc=${picomc}\n$picomc play") > /Applications/Minecraft
chmod 700 /Applications/Minecraft
