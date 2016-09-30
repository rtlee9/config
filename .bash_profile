
# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/usr/local/Cellar/python/2.7.12/bin:${PATH}"
export PATH

##
# Your previous /Users/Ryan/.bash_profile file was backed up as /Users/Ryan/.bash_profile.macports-saved_2016-04-10_at_16:10:14
##

# MacPorts Installer addition on 2016-04-10_at_16:10:14: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# Homebrew
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# added by Anaconda2 4.1.1 installer
export PATH="/Users/Ryan/anaconda/bin:$PATH"

# Force tmux to use 256 color
alias tmux='tmux -2'

# Save more bash history
HISTSIZE=5000
HISTFILESIZE=10000

# added by Anaconda2 4.2.0 installer
export PATH="/Users/Ryan/anaconda2/bin:$PATH"
