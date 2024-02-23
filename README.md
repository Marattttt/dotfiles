# My dotfiles

The files are managed using GNU Stow and should prove useful when doing setup of a new system

## Install 

### Git 
install git and clone the repo into ~/.dotfiles directory

### Stow

Install GNU Stow with a package manager, in my case - Homebrew

```bash
  brew install stow
```

### Preparation

Remove or backup files and folders in the ~ directory that are going to be replaced with links to stowed files

### Using Stow

Inside the ~/.dotfiles directory, run 

```bash
  stow .
```

In case of conflicts, refer to [Preparation](#preparation)

