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
export GOCACHE=$(go env GOGACHE)

export EDITOR="nvim"

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
