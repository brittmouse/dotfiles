# My Dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure the following are installed:

- Git
- Stow

`sudo apt install git stow` (Debian/Ubuntu-based distros)

or

`sudo pacman -S git stow` (Arch-based distros)

## Installation

First, checkout the dotfiles repo into $HOME

```sh
git clone git@github.com:brittmouse/$REPO_NAME.git
cd dotfiles
```

Then use GNU stow to create symlinks:

`stow .`

## Help

If you need a refresher on this, watch Dream Of Code's video [here](https://www.youtube.com/watch?v=y6XCebnB9gs) or check out the [GNU Stow docs](https://www.gnu.org/software/stow/manual/).
