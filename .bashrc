# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


 # Put your fun stuff here.
export PATH="${HOME}/.cargo/bin:${PATH}"
export PATH="$HOME/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin:$PATH"
export PATH="$HOME/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin:$PATH"
PS1="\[\e[38;2;157;124;216m\]\u@\[\e[38;2;122;162;247m\]\h \[\e[38;2;42;195;222m\]\w\n\[\e[38;2;187;154;247m\]$ \[\e[0m\]"
feh --bg-fill ~/Wallpapers/Beautiful.jpg
alias neofetch="fastfetch -c examples/13"
neofetch
alias cmatrix="cmatrix -C blue"
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias cdwm="nvim ~/dwm-btw/config.h"
alias cxinit="nvim ~/.xinitrc"
alias udwm="cd ~/dwm-btw; sudo make clean install; cd -;"
alias seest="nvim ~/st-btw/config.h"
alias modst="cd ~/st-btw; sudo make clean install; cd -"
alias emerg="sudo emerge --sync; sudo emerge --ask --verbose --deep --newuse @world; clear"
alias cbashrc="nvim ~/.bashrc"
alias ubashrc="source ~/.bashrc"
alias cpicom="nvim ~/.config/picom/picom.conf"
alias ci3="nvim ~/.config/i3/config"
alias clipcopy="xclip -selection clipboard"
alias clippaste="xclip -selection clipboard -o"
alias snvim="Text_Editor=nvim"
alias svim="Text_Editor=vim"
alias semacs="Text_Editor=emacs"
alias shelix="Text_Editor=hx"
alias bcp="g++ ~/c++/"
alias runcp="./a.out; rm -f ./a.out"
alias updotgit="cd ~/dotfiles; sudo cp -r ~/.config/nvim ~/dotfiles ~/dwm-btw ~/st-btw ~/.config/picom ~/.bashrc; git add .; git commit -m 'Auto update $(date)'; git push; cd -"


[ -f "/home/pohum/.ghcup/env" ] && . "/home/pohum/.ghcup/env" # ghcup-env

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
export PATH=$PATH:$HOME/.local/opt/go/bin
