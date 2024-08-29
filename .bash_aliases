alias nano='micro'
alias ls='exa'
alias cat='batcat'
alias cpt='cat /home/esma/token | xclip -selection clipboard'
alias c='bash ~/.scripts/compile.sh'
alias python="python3"
alias gs="git status"
alias ga="git add"
alias gcm="git commit -m"
alias gch="git checkout"
alias gr="git rebase"
alias gclean="git fetch --prune && git branch --merged | grep -Ev '(^\*|master|main|dev)' | xargs git branch -d"
alias gp="git push 2>&1 | tee /tmp/gitoutput"
alias push='git push 2>&1 | tee /tmp/gitoutput'
alias mr='bash ~/.scripts/openmr.sh'
eval "$(thefuck --alias)"
