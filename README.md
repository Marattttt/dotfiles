# My dotfiles

Files are managed using GNU Stow and should prove useful when doing setup of a new system

## Overview

This config is in use for Arch linux + Hyprland + Kitty + NeoVim

Also contains no longer in use configurations for Tmux, Helix and AwesomeWM 

### Git 
install git and clone the repo into ~/.dotfiles directory

### Stow

Install GNU Stow with a package manager

### Preparation

Remove or backup files and folders in the ~ directory that are going to be replaced with links to stowed files

### Using Stow

Inside the ~/.dotfiles directory, run 

```bash
  stow .
```

