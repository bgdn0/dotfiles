# Alacritty
# Clone
git clone https://github.com/alacritty/alacritty.git
cd alacritty
# Manual Page
sudo mkdir -p /usr/local/share/man/man1
gzip -c extra/alacritty.man | sudo tee /usr/local/share/man/man1/alacritty.1.gz > /dev/null
# Zsh completions
mkdir -p ${ZDOTDIR:-~}/.zsh_functions
echo 'fpath+=${ZDOTDIR:-~}/.zsh_functions' >> ${ZDOTDIR:-~}/.zshrc
# Terminfo
sudo tic -xe alacritty,alacritty-direct extra/alacritty.info
# Remove
cd ..
rm -rf alacritty

# https://github.com/tmcdonell/config-alacritty/blob/master/alacritty.yml

# Vim layout swiftcher
git clone https://github.com/myshov/xkbswitch-macosx.git
cp ./xkbswitch-macosx/bin/xkbswitch /usr/local/bin
rm -rf xkbswitch-macosx
git clone https://github.com/myshov/libxkbswitch-macosx.git
cp ./libxkbswitch-macosx/bin/libxkbswitch.dylib /usr/local/bin
rm -rf libxkbswitch-macosx
git clone https://github.com/lyokha/vim-xkbswitch
mkdir -p ~/.vim/after && cp ./vim-xkbswitch/plugin/xkbswitch.vim  ~/.vim/after/
rm -rf vim-xkbswitch
