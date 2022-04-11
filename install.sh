#!/bin/bash

#/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#eval "$(/opt/homebrew/bin/brew shellenv)"

#brew install java
#brew install python
#/opt/homebrew/bin/pip3 install --user --no-input picomc
python3 -m picomc account create $USER
touch /Applications/Minecraft
(echo "python3 -m picomc play") > /Applications/Minecraft
chmod 700 /Applications/Minecraft
