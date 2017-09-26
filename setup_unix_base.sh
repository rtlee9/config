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
sudo apt-get install tmux git vim zsh zip virtualenv python-pip python3-tk python-qt4 build-essential curl file
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
brew install gcc bat noti fzf htop fd ncdu tldr ack diff-so-fancy
pip install tldr
curl -L $(curl -s https://api.github.com/repos/variadico/noti/releases/latest | awk '/browser_download_url/ { print $2 }' | grep 'linux-amd64' | sed 's/"//g') | tar -xz && sudo mv noti /usr/local/bin

# install python linters
pip install flake8 pylint yapf autopep8

# diff-so-fancy config
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
git config --global color.ui true
git config --global color.diff-highlight.oldNormal    "red bold"
git config --global color.diff-highlight.oldHighlight "red bold 52"
git config --global color.diff-highlight.newNormal    "green bold"
git config --global color.diff-highlight.newHighlight "green bold 22"
git config --global color.diff.meta       "yellow"
git config --global color.diff.frag       "magenta bold"
git config --global color.diff.commit     "yellow bold"
git config --global color.diff.old        "red bold"
git config --global color.diff.new        "green bold"
git config --global color.diff.whitespace "red reverse"

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

# *********************************************
# pyenv
# *********************************************
curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash
