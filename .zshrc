# Path to your oh-my-zsh installation.
export ZSH=/Users/magnus/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="hyperzsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(brew)
plugins=(git)
plugins=(Composer)
plugins=(node)
plugins=(npm)
plugins=(osx)
plugins=(z)

# User configuration
autoload -U promptinit && promptinit
prompt pure

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

# Add-ons to the `${PATH}`
export PATH=${HOME}/bin:${PATH};
export PATH=/usr/local/sbin:${PATH};
export PATH=${PATH}:/usr/local/share/npm/bin;
export PATH=${PATH}:${HOME}/.composer/vendor/bin;
export PATH=$(brew --prefix homebrew/php/php56)/bin:$PATH;

# Export path for nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Export HOMEBREW github token
export HOMEBREW_GITHUB_API_TOKEN=513df6649cea48a69e826d235f86db773943ffc3

export DEVELOPER_DIR=/Applications/Xcode.app/Contents/Developer

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Prefer US English and use UTF-8
export LANG=en_US.UTF-8;
export LC_ALL=en_US.UTF-8;

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias gdb='SHELL=/bin/bash gdb'
alias symbolicatecrash='/Applications/Xcode.app/Contents/SharedFrameworks/DVTFoundation.framework/Versions/A/Resources/symbolicatecrash'

alias git="hub"
alias g="git"
alias h="history"

# Shortcuts
alias d='cd ~/Dropbox'
alias dl='cd ~/Downloads'
alias dt='cd ~/Desktop'
alias doc='cd ~/Documents'
alias ss='cd ~/Sites'

# Sweet stuff
alias update='source ~/bin/update'
alias cleanup='source ~/bin/cleanup'

# Php
alias php='php -dzend_extension=/usr/local/opt/php70-xdebug/xdebug.so'
alias phpunit='php $(which phpunit)'

# Load the iphone simulator
alias simulator='open /Applications/Xcode.app/Contents/Developer/Applications/iOS\ Simulator.app'

# IP addresses
alias ip='dig +short myip.opendns.com @resolver1.opendns.com'
alias localip='ipconfig getifaddr en0'

# Enhance dig
alias dig='dig +nostats +nocomments +nocmd'

# Show/hide hidden files in Finder
alias show='defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder'
alias hide='defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder'

# Get week number
alias week='date +%V'

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill='ps ux | grep "[C]hrome Helper --type=renderer" | grep -v extension-process | tr -s " " | cut -d " " -f2 | xargs kill'

# `a` with no arguments opens the current directory in Atom, otherwise
# opens the given location
function a() {
	if [ $# -eq 0 ]; then
		atom .;
	else
		atom '$@';
	fi
}

# `s` with no arguments opens the current directory in Sublime Text, otherwise
# opens the given location
function s() {
	if [ $# -eq 0 ]; then
		subl .;
	else
		subl '$@';
	fi
}

# `o` with no arguments opens current directory, otherwise opens the given
# location
function o() {
	if [ $# -eq 0 ]; then
		open .;
	else
		open '$@';
	fi
}

# Easy file sharing from the command line
# https://github.com/dutchcoders/transfer.sh/
function transfer() {
	# write to output to tmpfile because of progress bar
	tmpfile=$( mktemp -t transferXXX )
	curl --progress-bar --upload-file $1 https://transfer.sh/$(basename $1) >> $tmpfile;
	cat $tmpfile;
	rm -f $tmpfile;
}
