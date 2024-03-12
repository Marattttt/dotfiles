# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH="$PATH:/home/marat/go/bin:/home/marat/scripts"

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


alias kys="cd ~; cls;"
alias kyss="exit"
alias cdtest="cd /home/marat/dev/test"
alias cd..="cd .."
alias cdproj="cd /home/marat/dev/projects"
alias cddev="cd /home/marat/dev"
alias cdwork="cd /Users/marat/dev/work/"
alias browser="open -a /Applications/Vivaldi.app/"
alias gcc="gcc-13"
alias cls="clear && printf '\e[3J'"
alias copy="wl-copy"
alias paste="wl-paste"
