#!/usr/bin/env bash

print_header "Homebrew"

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
