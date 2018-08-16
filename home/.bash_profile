# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{aliases,bash_prompt,exports}; do
	[ -r "${file}" ] && [ -f "${file}" ] && source "${file}"
done;
unset file;

# Load the z binary
. `brew --prefix`/etc/profile.d/z.sh

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Enable tab completion for many Bash commands.
if [ -f /usr/local/share/bash-completion/bash_completion ]; then
  . /usr/local/share/bash-completion/bash_completion
fi

# Enable tab completion for `g` by marking it as an alias for `git`.
if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  complete -o default -o nospace -F _git g;
fi;

# Add tab completion for `defaults read|write NSGlobalDomain`.
# You could just use `-g` instead, but I like being explicit.
complete -W "NSGlobalDomain" defaults;

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail iTunes SystemUIServer Terminal" killall;
