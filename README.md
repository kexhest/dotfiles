# dotfiles

![dotfiles](https://cloud.githubusercontent.com/assets/499192/8982779/ab19893e-36c4-11e5-975b-86be2af72d86.png)

.files, sensible hacker defaults for OS X. If you're curious how to setup your own dotfiles, please visit [Mathias Bynens's dotfiles](https://github.com/mathiasbynens/dotfiles) and [Mike McQuaid's strap project](https://github.com/mikemcquaid/strap) to learn more.

[![Build Status](https://img.shields.io/travis/magnus-bergman/dotfiles/master.svg?style=flat)](https://travis-ci.org/magnus-bergman/dotfiles)
[![License](https://img.shields.io/github/license/magnus-bergman/dotfiles.svg?style=flat)](https://github.com/magnus-bergman/dotfiles/blob/master/LICENSE)

## Installation

This is the installation guide to setup these dotfiles on a new macOS system.

1. Generate SSH keys [https://help.github.com/articles/generating-ssh-keys](https://help.github.com/articles/generating-ssh-keys)

```bash
$ ssh-keygen -t rsa -C "your_email@example.com"
```

2. Clone this respoitory and install dotfiles.

3. Set default prompt to pure.

```bash
autoload -U promptinit; promptinit
prompt pure
```

4. Follow the instructions [here](https://github.com/tylerreckart/hyperzsh#for-oh-my-zsh-users) to install hyperzsh theme for oh my zsh. The theme is already set in the .zshrc within this repo.

5. Download an import private GPG key from Keybase.

6. Setup 1Password and sync passwords.

7. Add settings sync to vs-code/atom/sublime.

8. Restart the computer and live happily ever after.

## Before Reset

Remeber to always backup or upload local stuff that you care about. Here are a few reminders of what you might lose otherwise.

- Local databases and app configurations: eg. `Transmit.app` favorites and `mysql` databases.
- Remember to check all GIT repositories for uncommitted changes.
- Make sure editor settings are synced.

Last but not least, you should probably reconsider applications, binaries and tools in `scripts`.

## License

[MIT](LICENSE) © [Magnus Bergman](https://magnus.sexy).
