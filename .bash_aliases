
function gpr(){
    git fetch origin pull/$1/head:pr_$1
    git checkout pr_$1
}

function git_archive(){
	D=`basename ${PWD}`
	N=$D-$1.tar.gz
	R=~/work/release
	git archive $1 --prefix "$D-$1/" -o $N
	cp $N $R -v
	gpg --detach-sign $R/$N
	ls -lh $R/$N*

}

alias reload='. ~/.bash_aliases'

function sha256file(){
	echo Saving sha checksum to $1.sha256
	sha256sum $1 | tee $1.sha256
	ls -lh $1*
}

function sha512file(){
	echo Saving sha checksum to $1.sha512
	sha512sum $1 | tee $1.sha512
	ls -lh $1*
}

function network_priority(){
	route -n
	sudo ifmetric $1 50
	route -n
}
alias network_scan="sudo arp-scan -l --interface=enp0s25"
alias network_hogs='sudo netstat --inet -ap'

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
alias gl='git log --show-signature --oneline'
alias ll='ls -lh'


function symbols() { nm -gC "$1" | ccze -A | less -R; }

PATH=~/.local/bin:$PATH
export EDITOR=vim
