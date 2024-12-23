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

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install grep
brew install neovim
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
brew install ssh-copy-id
brew install tree
brew install elixir

# this install dotfiles
brew install stow
brew install ripgrep

brew tap homebrew/cask-fonts
brew install font-hack-nerd-font
# if iterm set iterm font to this
brew install --cask font-fira-code-nerd-font

brew install wget

#terminal
brew install wezterm

# terminal file explorer
brew install lf

# nicer cat
brew install bat
brew install --cask amethyst



# Remove outdated versions from the cellar.
brew cleanup

