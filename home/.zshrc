export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="hyperzsh"

plugins=(brew git node npm macos z)

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
# eval "$(pyenv init -)"

export PATH=${HOME}/bin:${PATH};
export PATH=/usr/local/sbin:${PATH};
export PATH=${HOME}/.local/bin:${PATH};
export PATH=${PATH}:/usr/local/share/npm/bin;
export PATH=${PATH}:`yarn global bin`;
# export PATH=/opt/homebrew/opt/openjdk/bin:${PATH}

export EDITOR='vim'
export GPG_TTY=$(tty)

# export JAVA_HOME=$(/usr/libexec/java_home -v17)
# export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

export HOMEBREW_GITHUB_API_TOKEN=
export HOMEBREW_NO_ANALYTICS=1

export LANG=en_US.UTF-8;
export LC_ALL=en_US.UTF-8;

source $ZSH/oh-my-zsh.sh

alias update='source ~/bin/update'
alias cleanup='source ~/bin/cleanup'
alias d='cd ~/Developer'
alias g='git'
alias h='history'
alias l='ls -la'
alias ip='dig +short myip.opendns.com @resolver1.opendns.com'
alias localip='ipconfig getifaddr en0'
alias dig='dig +nostats +nocomments +nocmd'
alias grep="grep --color=auto"
alias show='defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder'
alias hide='defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder'
alias week='date +%V'
alias simulator='open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app'
alias chromekill='ps ux | grep "[C]hrome Helper --type=renderer" | grep -v extension-process | tr -s " " | cut -d " " -f2 | xargs kill'

function c() {
  if [ $# -eq 0 ]; then
    code .;
  else
    code '$@';
  fi
}

function o() {
  if [ $# -eq 0 ]; then
    open .;
  else
    open '$@';
  fi
}

autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
      nvm install-latest-npm
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
