# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:/home/marat/go/bin:/home/marat/scripts"
export PATH="$PATH:/home/marat/anaconda3/bin"
export GOCACHE=$(go env GOGACHE)
export ELECTRON_OZONE_PLATFORM_HINT=wayland

export EDITOR="nvim"

# export PS1='\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]\$\[\033[0m\] '

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

. "$HOME/.cargo/env"

# wal -i /home/marat/Pictures/Wallpapers/a_mountain_with_trees_and_moon.jpg > /dev/null

alias kys="cd ~; cls;"
alias kyss="exit"
alias lsa="ls -lah"
alias cls="clear && printf '\e[3J'"
alias open="xdg-open"

[ -f "/home/marat/.ghcup/env" ] && . "/home/marat/.ghcup/env" # ghcup-env
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/marat/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/marat/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/marat/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/marat/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

