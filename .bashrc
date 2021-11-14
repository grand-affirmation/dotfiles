PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

alias ls="exa --icons"
alias exa="exa --icons"
alias rsync="rsync -av -P"
alias mount-fd="udisksctl mount -b /dev/sdb1"
alias remove-fd="udisksctl unmount -b /dev/sdb1"

mkcdir ()
{
	mkdir -p -- "$1" &&
	cd -P -- "$1"
}

export EDITOR=nvim
export VISUAL=nvim
. "$HOME/.cargo/env"
