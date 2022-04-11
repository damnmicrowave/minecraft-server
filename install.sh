#!/bin/bash

mkdir .homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C .homebrew
eval "$(.homebrew/bin/brew shellenv)"

brew install java
brew install python
.homebrew/Cellar/python@3.9/3.9.12/bin/pip3 install --user --no-input picomc
picomc="/Users/${USER}/Library/Python/3.9/bin/picomc"
$picomc account create $USER
touch /Applications/Minecraft
(echo -e "export PATH=\"/Users/${USER}/.homebrew/opt/openjdk/bin:\$PATH\"\n${picomc} play") > /Applications/Minecraft
chmod 700 /Applications/Minecraft
clear
echo "Minecraft has been installed!"
echo "Uninstalling unnecessary files... Please enter your password below:"
sudo rm -rf /Library/Developer
echo "Everything is done! You can close this window now"
