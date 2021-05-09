#!/usr/bin/env bash

print_header "Fonts"
print_title "Installing Fonts"
execute "brew tap homebrew/cask-fonts" "tap cask-fonts"

fonts=(
    "font-codenewroman-nerd-font"
    "font-fantasquesansmono-nerd-font"
    "font-firacode-nerd-font"
    "font-hack-nerd-font"
    "font-inconsolatalgc-nerd-font"
    "font-meslo-nerd-font"
    "font-mononoki-nerd-font"
    )

for font in "${fonts[@]}"
do
    execute "brew cask install ${font}" "${font}"
done
