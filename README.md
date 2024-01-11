# dotfiles
The dotfiles are meant to be installed using [stow](https://www.gnu.org/software/stow/manual/stow.html#:~:text=The%20approach%20used%20by%20Stow,from%20clutter%20from%20other%20packages.)

## Requirements

### Packagaes
Install these with your preferred package manager or from source:
```
stow
fish
nvim
starship
gcc
gcc-c++
nodejs
lua
nerdfonts
nitch
python3
python3-pip
ripgrep
fd-find
preload
jq
perl-JSON-PP
composer
dunst
alacritty
```

install pynvim
```
/usr/bin/python3 -m pip install pynvim
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
Clone repo into your home dir:
```
git clone git@gitlab.com:peyton.morrison/codeaholic/personal-projects/.dotfiles.git ~/.dotfiles
```
Install dotfiles:
```
cd ~/.dotfiles/
stow --target=$(HOME) */
```

