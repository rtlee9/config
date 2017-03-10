# add all config files to root as symlink
cd ~
ln -s config/.* .
rm -rf .git
cd config

# *********************************************
# tmux setup
# *********************************************

# update apt to ensure we have the latest packages
sudo apt-get update

# install tmux
sudo apt-get install tmux

# *********************************************
# ZSH setup
# *********************************************

# install zsh
sudo apt-get install zsh

# set zsh as default shell
sudo chsh $USER -s $(which zsh);

# install Oh My Zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sudo sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# source zsh config
source .zshrc

# *********************************************
# VIM setup
# *********************************************

# install Vundle plugin manager
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install plugins
vim +PluginInstall +qall
