parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1="\u\[\033[1;32m\]@\[\033[0;37m\]\h \[\033[1;34m\]\w\[\033[0m\] \$(parse_git_branch) \[\033[1;37m\]$ \[\033[0;37m\]"

# make bash autocomplete with up arrow
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

# Alias
alias a="atom ."
alias g="grep -nri"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# GIT
alias ga="git add"
alias gaa="git add --all"
alias gc="git commit"
alias gp="git pull"
alias gpp="git push"
alias gs="git status"
alias gd="git diff"
alias gl="git log"
alias gco="git checkout"
alias gpom="git pull origin master"
alias gppom="git push origin master"

# RAILS
alias rdbc="rake db:create"
alias rdbm="rake db:migrate"
alias rdbtp="rake db:test:prepare"

# RAILS 3
alias rs="rails server -u"
alias rg="rails generate"
alias rc="rails console"

alias myroutes="rake routes | grep"

# Returns path of first finder window
function pfd() {
  osascript 2>/dev/null <<EOF
    tell application "Finder"
      return POSIX path of (target of window 1 as alias)
    end tell
EOF
}

# CDs into pfd path
function cdf() {
  cd "$(pfd)"
}

# Git autocompletion script
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export EDITOR='atom -w'
