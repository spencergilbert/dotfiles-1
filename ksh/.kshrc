HISTFILE=$HOME/.ksh_history
HISTSIZE=20000

set -o emacs

red="\033[31m"
grn="\033[32m"
ylw="\033[33m"
cyn="\033[36m"
blu="\033[34m"
prp="\033[35m"
bprp="\033[35;1m"
gry="\033[94m"
rst="\033[0m"

prompt_pwd() {
    printf '%b' "\001${cyn}\002$(pwd)\001${rst}\002"
}

rootornot() {
    [[ "$(id -u)" -eq 0 ]] &&
        printf '%b' "\001${red}\002#\001${rst}\002"
}

PS1='\n$(prompt_pwd)\n▲$(rootornot) '
PS2="> "

for i in ~/.kshrc.d/[0-9]*; do
    . "$i"
done
