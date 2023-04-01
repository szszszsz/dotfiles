alias gp='git pull'
alias ga='git add'
alias gb='git branch'
alias gbb='git blame'
alias gch='git checkout'
alias gom='git checkout master'
alias gc='git commit'
alias grem='git remote -v'
alias gcm='git commit -m'
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
alias vim='nvim'
alias scan_network="sudo arp-scan -l --interface=enp0s25"
alias pastebinit='pastebinit -b http://dpaste.com/'
alias mv='mv -v'
alias reload='source ~/.config/fish/config.fish'
alias ghrev='gh pr list -S "user-review-requested:@me"'
alias print_pipe='tee /dev/fd/2'

# push out 3333 port for debugging
alias drun='docker run -it --rm --privileged  -v $PWD:/app -p 3333:3333  (docker images | fzf | tee /dev/fd/2 | col3)'
# X support
alias drun_all='docker run -it --rm --privileged --network host -v $PWD:/app --env="DISPLAY" --env="QT_X11_NO_MITSHM=1" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw"  (docker images | fzf | tee /dev/fd/2 | col3)'

# set -gx PATH ~/work/software/gcc-arm/gcc-arm-none-eabi-8-2018-q4-major/bin/ $PATH
set -gx PATH /home/sz/work/software/gcc-arm-current-bin/ $PATH
set -gx PATH ~/.local/bin $PATH
set -gx PATH ~/.cargo/bin $PATH
set -gx PATH /usr/local/cuda/bin $PATH
set -gx LD_LIBRARY_PATH /usr/local/cuda/lib64 $LD_LIBRARY_PATH

	# include this plugin so nix will work
	# https://github.com/NixOS/nix/issues/1512
	# https://github.com/oh-my-fish/plugin-foreign-env
	# set fish_function_path $fish_function_path $HOME/.config/fish/plugin-foreign-env/functions

	# initialize nix
	# fenv source '$HOME/.nix-profile/etc/profile.d/nix.sh'

export EDITOR=nvim
export CARGO_TARGET_DIR=/tmp/cargo

status --is-login; and status --is-interactive; and exec byobu-launcher

