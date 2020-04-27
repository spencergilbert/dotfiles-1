alias gah='sudo $(fc -ln -1)'
alias vime="vim ~/.vimrc"
alias o="xdg-open"
alias gc="git commit -v -s"
alias ga="git add"
alias gd="git diff --minimal"
alias gl="git log --oneline --decorate --graph"
alias ls="colorls -G"
alias vim="nvim"
alias ..="cd .."

socks() {
    pkill ssh
    ssh -D 8008 emerald -fN
}

gst() {
    branch="$(git branch)"
    printf '%s\n' "$branch"
    git status --short 
}

up() {
	~/bin/icyup.sh "$1"
}

nvmon() {
	source ~/.nvm/nvm.sh
}

envac() {
	. .env/bin/activate
}

vpn() {
	~/bin/vpnon.sh
}

dt() {
    time.sh -n
}

ggp() {
    git push "$(git remote show)" "$(git branch --show-current)" 
}

gcl() {
    git clone "$@"
}
