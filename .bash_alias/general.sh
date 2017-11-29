
# Reloads the bashrc file
alias bashrl="source ~/.bash_profile && echo Bash config reloaded"

# Prints disk usage in human readable form
alias d="du -sh"

# Clear the screen of your clutter
alias c="clear"
alias cl="clear;ls;pwd"

# GREP Motifications
alias grep="grep --color"
alias grepp="grep -P --color"


# Json tools (pipe unformatted to these to nicely format the JSON)
alias json="python -m json.tool"
alias jsonf="python -m json.tool"


# Edit shortcuts for config files
alias sshconfig="${EDITOR:-nano} ~/.ssh/config"
alias bashrc="${EDITOR:-nano} +120 ~/.bashrc && source ~/.bashrc && echo Bash config edited and reloaded."

# SSH helper
alias sshclear="rm ~/.ssh/multiplex/* -f && echo SSH connection cache cleared;"
alias sshlist="echo Currently open ssh connections && echo && l ~/.ssh/multiplex/"

alias sudo='sudo '

# SSH auto-completion based on entries in known_hosts.
if [[ -e ~/.ssh/known_hosts ]]; then
  complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh
fi

#  discover what folders are using the most space
alias diskhog='du -h -d1'

# Colorize grep output
alias grep='grep --color=auto -n'
