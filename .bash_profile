# Include our aliases which we've defined elsewhere
for f in ~/.bash_alias/*; do source $f; done
for f in ~/.bash_extras/*; do source $f; done
#
# DIR="$HOME/.bash_alias/"
# if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi
# . "$DIR/general.sh"
# . "$DIR/docker.sh"
#
# DIR="$HOME/.bash_extras/"
# # Load the shell dotfiles, and then some:
# # * ~/.path can be used to extend `$PATH`.
# # * ~/.extra can be used for other settings you don’t want to commit.
# if [ -d "$DIR" ]; then;
# #cd EXTRAS_DIR;
# for file in $DIR; do
# 	[ -r "$file" ] && [ -f "$file" ] && source "$file" && echo "$file";
# done;
# fi;
# unset file;

# Path to the bash it configuration
export BASH_IT="/Users/bobby/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
#export BASH_IT_THEME='bobby'
export BASH_IT_THEME="zork"

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@github.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set Xterm/screen/Tmux title with only a short hostname.
# Uncomment this (or set SHORT_HOSTNAME to something else),
# Will otherwise fall back on $HOSTNAME.
#export SHORT_HOSTNAME=$(hostname -s)

# Set Xterm/screen/Tmux title with only a short username.
# Uncomment this (or set SHORT_USER to something else),
# Will otherwise fall back on $USER.
#export SHORT_USER=${USER:0:8}

# Set Xterm/screen/Tmux title with shortened command and directory.
# Uncomment this to set.
#export SHORT_TERM_LINE=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# Load Bash It
source "$BASH_IT"/bash_it.sh

export EDITOR=vim

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

##
# Manage our bash history settings
##

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Set the location of your HISTFILE
HISTFILE=/Users/bobby/.bash_history

# Number of lines to keep (1000000 in this example)
HISTFILESIZE=1000000

# Set how many commands to keep in the current session history list
HISTSIZE=1000

# Ignore commands that start with 2 spaces. Useful for an imperfect world where
# commands sometimes contain credentials. Also, don't store duplicate entries
HISTCONTROL=ignoreboth

HISTTIMEFORMAT="%a %h %d – %r .: "

##
# Go Support
##
export GOPATH=$(go env GOPATH)

# git-radar (I don't think this is active because of bash-it)
export PS1="$PS1\$(git-radar --bash --fetch)"
eval "$(aliases init --global)"

if [ -f /usr/local/share/liquidprompt ]; then
    . /usr/local/share/liquidprompt
fi
