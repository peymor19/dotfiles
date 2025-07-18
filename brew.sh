#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# for go test -race
brew install gcc

#nvim stuff
brew install neovim
brew install node
brew install wget
brew install fd
npm -g install neovim

brew install elixir
brew install podman

# Install more recent versions of some macOS tools.
brew install grep
brew install openssh
brew install tmux

brew install socat
brew install xz

# Install other useful binaries.
brew install ack
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install lua
brew install tree

# this install dotfiles
brew install stow
brew install ripgrep

brew install font-hack-nerd-font
brew install --cask font-fira-code-nerd-font

#terminal
brew install wezterm

# Remove outdated versions from the cellar.
brew cleanup

