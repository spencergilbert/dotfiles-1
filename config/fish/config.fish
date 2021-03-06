set fish_greeting

set -gx PATH ~/bin ~/.local/bin ~/leet/Nim/bin ~/.nimble/bin \
/usr/local/bin /usr/bin /bin /sbin /usr/sbin /usr/X11R6/bin \
~/go/bin

set -gx EDITOR nvim
set -gx BROWSER iridium
set -gx PW_KEY x@icyphox.sh

source ~/.config/fish/functions/marks.fish

function fish_user_key_bindings
    bind \cr '__fzy_history (commandline -b)'
end
