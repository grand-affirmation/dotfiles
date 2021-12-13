PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

alias exa="exa --icons --long --header --inode"
alias rsync="rsync -av -P"
alias mountfd="udisksctl mount -b /dev/sdb1"
alias removefd="udisksctl unmount -b /dev/sdb1"
alias xclip="xclip -selection clip"
alias yt-dlp="yt-dlp --external-downloader aria2c"

mkcdir ()
{
	mkdir -p -- "$1" &&
	cd -P -- "$1"
}

export EDITOR=nvim
export VISUAL=nvim
export HISTCONTROL=ignoreboth:erasedups

#. /usr/share/skim/completion.bash
#. /usr/share/skim/key-bindings.bash
. /usr/share/bash-completion/completions/skim-completion.bash
. /usr/share/bash-completion/completions/skim-key-bindings.bash
#. /usr/share/fzf/completion.bash
#. /usr/share/fzf/key-bindings.bash
. "$HOME/.cargo/env"
