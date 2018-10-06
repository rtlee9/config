# add all config files to root as symlink
cd ~
ln -s config/.* .
rm -rf .git
cd config

# *********************************************
# brew setup
# *********************************************

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# update brew to ensure we have the latest packages
brew update

# install brew packages
brew install python tmux zsh zsh-completions zsh-syntax-highlighting autoenv wget bat noti fzf htop fd ncdu tldr ack diff-so-fancy pyenv

# *********************************************
# miscellany
# *********************************************

# install python 3.7 and set as global
pyenv install 3.7.0
pyenv global 3.7.0

pip install virtualenv flake8 csvkit

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
