# Linus' Dotfiles
These files are a simple theme and terminal colour scheme that I like, as well as my Neovim config files for editing code.

Included are some install scripts, however be aware that these were only designed for personal use. They will only work for Ubuntu + gnome and could produce undesired effects on other systems.


## Files
In the repository you will find the following


### .fonts
This is a folder containing the font I use for my gnome terminal and Neovim ([UbuntuSans Nerd Font][1]). It will by symbolically linked to the HOME directory of the user, where Gnome will automatically recognise the fonts.

At the time of writing modern Gnome installations will take fonts from .local/share/fonts/ in the HOME directory, however .fonts/ in HOME still works as a legacy feature.


### .themes
Contains the Gruvbox-Dark theme for GTK applications (taken from [Gruvbox-GTK-Theme][2]). Similarly to .fonts the folder will be linked to HOME, as well as the gtk-4.0 folder contents being linked to .config/gtk-4.0/ to support newer gtk applications.


### config
This folder contains the configurations for both the Gnome terminal and Gnome extensions.

These configurations can be extracted from your machine using `dconf dump /org/gnome/shell/extensions/NAME_OF_EXTENSION` for extensions or `dconf dump /org/gnome/terminal/legacy/profiles:/:PROFILE-ID/`.

The ID (uuid of the terminal profile) can be found by using `dconf dump org/gnome/legacy/profiles:/` and checking which profile uses the `visible-name` of the profile you want to copy.


### nvim
Configuration files for my personal Neovim setup are stored here. This includes the lazy package manager and mason LSP configurations. I made this configuration using [kickstart.nvim][3] as a basis.


### scripts
These scripts are the backbone for installing the Ubuntu + Gnome desktop automatically.
Includeed:
- `aesthetic.sh` Sets the personalization settings for the desktop and its extensions (assumes all necessary programs and extensions have been installed).
- `extensions.sh` Instals extensions from [https://extensions.gnome.org][4] if a version has not already been installed.
- `install.sh` Updates and instals all programmes I personally like to have available.
- `symlinks.sh` Creates symlinks to link folders and files to where they need to be in HOME.
- `terminal.sh` Creates a custom terminal profile using `terminal.config`


### .bash_aliases
A file containing bash aliases and PATHs that I want to be available at every terminal session.

`.bash_aliases` should automatically be run when in the HOME directory, but in the case it isn't you can add a line to `.bashrc` that loads it.


### .gitconfig
A global config file for git


### start.sh
The start script for installing all the packages and configuring the Gnome desktop.

Be warned if you are running this for yourself, the installation only works for a Ubuntu installation using Gnome. I would recommend reading and understanding the scripts to make your own setup scripts to ensure they work for your use case.

[1]: https://www.nerdfonts.com
[2]: https://github.com/Fausto-Korpsvart/Gruvbox-GTK-Theme
[3]: https://github.com/nvim-lua/kickstart.nvim
[4]: https://extensions.gnome.org
