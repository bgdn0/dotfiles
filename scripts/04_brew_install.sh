#!/usr/bin/env bash

print_header "Brew Install"

formulaes=(
    "Node JS" # Node JS
    "node:Node.js"
    "File Structure Navigation" # File Structure Navigation
    "lsd:lsd"
    "ranger:ranger"
    "tree:tree"
    "vifm:vifm"
    "z:z"
    "Search tools" # Search tools
    "ack:ack"
    "fd:fd"
    "fdupes:fdupes"
    "fzf:FZF"
    "fzy:fzy"
    "jdupes:jdupes"
    "pdfgrep:pdfgrep"
    "ripgrep:ripgrep"
    "the_silver_searcher:The Silver Searcher"
    "Compression" # Compression
    "brotli:brotli"
    "p7zip:7-Zip"
    "unrar:unrar"
    "xz:xz"
    "Documenting" # Documenting
    "aspell:aspell"
    "gettext:gettext"
    "graphviz:Graphviz"
    "pandoc:Pandoc"
    "plantuml:PlantUML"
    "poppler:poppler"
    "Version Control" # Version Control
    "diff-so-fancy:diff-so-fancy"
    "git-flow:git-flow"
    "git-lfs:git-lfs"
    "git:Git"
    "Editors / Viewers" # Editors / Viewers
    "bat:bat"
    "macvim:MacVim"
    "neovim:NeoVim"
    "vim:Vim"
    "Graphics" # Graphics
    "gifify:gifify"
    "gifsicle:Gifsicle"
    "gnuplot:Gnuplot"
    "graphicsmagick:GraphicsMagick"
    "imagemagick:ImageMagick"
    "jp2a:jp2a"
    "pla:pla"
    "pqiv:pqiv"
    "Web" # Web
    "ddgr:ddgr"
    "googler:googler"
    "w3m:w3m"
    "wget:wget"
    "Different Tools" # Different Tools
    "cheat:cheat"
    "cloc:cloc"
    "gcal:gCal"
    "hr:hr"
    "htop:htop"
    "insect:insect"
    "joplin:Joplin"
    "mackup:mackup"
    "navi:navi"
    "radare2:Reverse engineering framework"
    "trash:trash"
    "Video" # Video
    "ffmpeg:FFmpeg"
    "mps-youtube:mps-youtube"
    "youtube-dl:youtube-dl"
    "Zsh" # Zsh
    "starship:starship"
    "zsh-autosuggestions:zsh-autosuggestions"
    "zsh-completions:zsh-completions"
    "zsh-history-substring-search:zsh-history-substring-search"
    "zsh-syntax-highlighting:zsh-syntax-highlighting"
    "zsh:Zsh"
    "Tmux" # Tmux
    "tmux:tmux"
    "tmuxinator:tmuxinator"
    "Xcode / iOS" # Xcode / iOS
    #"bluepill:bluepill"
    "carthage:Carthage"
    "chisel:chisel"
    "cocoapods:Cocoapods"
    #"ideviceinstaller:ideviceinstaller"
    #"ios-deploy:ios-deploy"
    #"ios-sim:ios-sim"
    "swiftformat:swiftformat"
    "swiftlint:SwiftLint"
    "xctool:xctool"
    )

for formula in "${formulaes[@]}"
do
    if [[ $formula =~ ":" ]]
    then
        command=${formula%%:*}
        title=${formula#*:}
        execute "brew install ${command}" "${title}"
    else
        print_title $formula
    fi
done
