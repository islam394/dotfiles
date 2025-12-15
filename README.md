# dotfiles

This repo contains my dotfile configuration, allowing for a consistent computing experience across multiple machines.
These days I primarily use GNU/Linux via the [Pop!_os](https://system76.com/pop).

I manage the various configuration files in this repo using [GNU Stow](https://www.gnu.org/software/stow/).  This allows me to set up symlinks for all of my dotfiles using a single command:

### Install GNU Stow
```sh
# it depend on your distro , if you are using debian or ubuntu based distro use this 
sudo apt install stow

```

### Install The Dot Files
```sh
git clone https://github.com/islam394/dotfiles.git
cd dotfiles
stow .
```

