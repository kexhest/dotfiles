# dotfiles

![dotfiles](https://cloud.githubusercontent.com/assets/499192/8982779/ab19893e-36c4-11e5-975b-86be2af72d86.png)

.files, sensible hacker defaults for OS X. If you're curious how to setup your own dotfiles, please visit [Mathias Bynens's dotfiles](https://github.com/mathiasbynens/dotfiles) and [Mike McQuaid's strap project](https://github.com/mikemcquaid/strap) to learn more.

This repository was originally a fork from [vinkla/dotfiles](https://github.com/vinkla/dotfiles/).

[![Build Status](https://img.shields.io/travis/magnus-bergman/dotfiles/master.svg?style=flat)](https://travis-ci.org/magnus-bergman/dotfiles)
[![License](https://img.shields.io/github/license/magnus-bergman/dotfiles.svg?style=flat)](https://github.com/magnus-bergman/dotfiles/blob/master/LICENSE)

## Installation

This is the installation guide to setup these dotfiles on a new OS X system.

**1**. Generate SSH keys [https://help.github.com/articles/generating-ssh-keys](https://help.github.com/articles/generating-ssh-keys)

```bash
$ ssh-keygen -t rsa -C "your_email@example.com"
```

**2**. Clone this respoitory and install dotfiles.
```bash
$ git clone git@github.com:magnus-bergman/dotfiles.git
cd dotfiles
./script/setup
```

**3**. Replace Sublime Text user directory and sync with DropBox.
```bash
$ rm -r ~/Library/Application\ Support/Sublime\ Text\ 3/Packages
$ ln -s ~/Dropbox/Apps/Sublime\ Text\ 3/Packages ~/Library/Application\ Support/Sublime\ Text\ 3/Packages
```

**4**. Replace Atom user directory and sync with DropBox.
```bash
$ rm -r ~/.atom
$ ln -s ~/Dropbox/Apps/Atom ~/.atom
```

**5**. Restart the computer and live happily ever after.

## Before Reset
This is a checklist of things to do before reseting the disk.

1. Export `Transmit.app` favorites and `Sequel Pro.app` databases to Dropbox.
2. Check all GIT repositories for uncommitted changes.
3. Make sure editor settings (`Sublime Text.app` and `Atom.app`) are synced.
4. Reconsider all applications, binaries and tools in `script/setup`.

## License
The dotfiles repository is licensed under [The MIT License (MIT)](LICENSE).
