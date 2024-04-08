# Neovim Configuration
A Neovim configuration based on the excellent [video from Josean Martinez](https://youtu.be/vdn_pKJUda8?si=wtFY4ync7e-f8S2X).

## Prerequisites
The following prerequisites must be installed for the Neovim plugins to work:
1. nodejs >=20.12.1 (LTS)
2. ripgrep >=14.1.0
3. fd >= 9.0.0
4. wget >=1.24.5
5. .NET SDK >=8.0.203

A [bootstrap script](https://github.com/sduplooy/bootstrap) is available on GitHub to install all the prerequisites.

## Installation
```
mkdir -p ~/.config/nvim
cd ~/.config
git clone https://github.com/sduplooy/nvim.git
```

## Testing
Tested on macOS Sonoma (14.4.1) and iTerm2 (3.4.23) using the RobotoMono Nerd Font Propo family.

Last tested on 7 April 2024


## WSL (Ubuntu 20.04)
1. Download Neovim 0.95 `wget https://github.com/neovim/neovim/releases/download/v0.9.5/nvim.appimage`
2. Overwrite the current Neovim executable with the downloaded one `sudo mv nvim.appimage /opt/nvim/nvim`
3. Install ripgrep `sudo apt install ripgrep`

## Troubleshooting
If Neovim complains about fzf dependencies, run `make all` in `~/.local/share/nvim/lazy/telescope-fzf-native.nvim` directory.

