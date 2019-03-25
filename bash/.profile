# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

export PATH="/usr/local/anaconda/bin:$PATH:$HOME/.scripts:$HOME/.local/bin:/usr/local/go/bin:$(ruby -e 'print Gem.user_dir')/bin:$HOME/go/bin"
export EDITOR="nvim"
export BROWSER="firefox"
export TERMINAL="st"
export READER="zathura"

# Start graphical server if i3 not already running
if [ "$(tty)" = "/dev/tty1" ] ; then
    pgrep -x i3 || exec startx
fi

