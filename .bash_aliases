
function gpr(){
    git fetch origin pull/$1/head:pr_$1
    git checkout pr_$1
}


alias gbr="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"

alias gp='git pull'
alias ga='git add'
alias gb='git branch'
alias gbb='git blame'
alias gch='git checkout'
alias gom='git checkout master'
alias gc='git commit -S'
alias gcma='git commit -S -asm'
alias gcam='git commit -S -asm'
alias gs='git status'
alias gff='git diff -w HEAD^'
alias gf='git diff -w'
alias gfw='git diff -w --word-diff-regex=[^[:space:]]'
alias gfc='git diff -w --cached'
alias gfm='git diff -w master'

