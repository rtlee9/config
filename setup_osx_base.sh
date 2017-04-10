# add all config files to root as symlink
cd ~
ln -s config/.* .
rm -rf .git
cd config

# *********************************************
# miscellany
# *********************************************
brew install wget
brew install python
pip install virtualenv

# *********************************************
# brew setup
# *********************************************

# update brew to ensure we have the latest packages
brew update

# install brew packages
brew install tmux zsh zsh-completions zsh-syntax-highlighting autoenv

# *********************************************
# ZSH setup
# *********************************************

# set zsh as default shell
chsh -s $(which zsh)

# setup Oh My Zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# source zsh config
source .zshrc

# *********************************************
# VIM setup
# *********************************************

# install Vundle plugin manager
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install powerline fonts
git clone https://github.com/powerline/fonts.git
# install
cd fonts
./install.sh
cd ..
rm -rf fonts

# install plugins
vim +PluginInstall +qall

# *********************************************
# miscellany
# *********************************************
export QT_QPA_PLATFORM=offscreen

# fix pbcopy
brew install reattach-to-user-namespace
