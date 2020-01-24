#!/usr/bin/env bash

source utils.sh

install_homebrew() {
    if [[ $(command -v brew) == "" ]]; then 
        execute \
            '/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"' \
            "Install Homebrew"
	else
        execute "brew update" "Update Homebrew"
	fi
}

main() {
    print_title "Homebrew"
    install_homebrew
}

main
