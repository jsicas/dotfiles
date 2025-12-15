# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs
## colocando TeXLive no path
export PATH="$HOME/.texlive/2025/bin/x86_64-linux:$PATH"
export MANPATH="$HOME/.texlive/2025/texmf-dist/doc/man:$MANPATH"
export INFOPATH="$HOME/.texlive/2025/texmf-dist/doc/info:$INFOPATH"
