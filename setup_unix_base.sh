# add all config files to root as symlink
cd ~
ln -s config/.* .
rm -rf .git
cd config

# *********************************************
# General system installations
# *********************************************

# update apt to ensure we have the latest packages
sudo add-apt-repository ppa:jonathonf/vim  # VIM8.0
sudo apt-get update

# install packages
sudo apt-get install tmux git vim zsh zip virtualenv python-pip python3-tk python-qt4

# install python linters
pip install flake8 pylint yapf autopep8

# *********************************************
# ZSH setup
# *********************************************

# set zsh as default shell
sudo chsh $USER -s $(which zsh);

# install Oh My Zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
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

# *********************************************
# miscellany
# *********************************************
export QT_QPA_PLATFORM=offscreen

# *********************************************
# pyenv
# *********************************************
curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash
