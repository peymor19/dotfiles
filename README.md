# dotfiles
The dotfiles are meant to be installed using [stow](https://www.gnu.org/software/stow/manual/stow.html#:~:text=The%20approach%20used%20by%20Stow,from%20clutter%20from%20other%20packages.)

## Requirements

### Packages
Install these with your preferred package manager or from source:
```
stow
fish
nvim
starship
gcc
nodejs
lua
nerdfonts
python3
ripgrep
fd-find
preload
jq
composer
dunst
alacritty
rofi
i3
```

Required for neovim
```
python3
python3-pip
nodejs
npm
```

Packages required for fish/zsh
```
git
git-delta
```

Plugins required for zsh
```
zoxide
zsh-autosuggestions
history-substring-search
zsh-syntax-highlighting
```

Install zsh syntax highlighting plugins
```
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

Optional for neovim telescope
```
ripgrep
fd-find
```

for alacritty
```
 curl -sSL https://raw.githubusercontent.com/alacritty/alacritty/master/extra/alacritty.info | tic -x -
```

for intel sound
```
sudo pacman -S sof-firmware
```

```
echo performance | tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
```

### Set-Up
Set fish as your default shell:
```
chsh -s $(which fish)
```

## Install

Clone repo into your home dir

Install dotfiles:
```
cd ~/.dotfiles/
stow --target=$(HOME) */
```

