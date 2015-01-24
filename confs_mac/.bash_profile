#You'll need to add the Homebrew directory to the front of your system path, in order to ensure that Homebrew-installed software is given priority over any other versions.
export PATH=/usr/local/bin:$PATH
alias py='python'
alias rb='ruby'

#color the shell
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

#settigns for php
export PATH="$(brew --prefix homebrew/php/php55)/sbin:$PATH"
PHP_AUTOCONF="/usr/local/bin/autoconf"
