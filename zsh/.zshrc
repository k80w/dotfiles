zstyle ':completion:*' completer _expand _complete _ignored
zstyle :compinstall filename '/home/dnaf/.zshrc'

autoload -Uz compinit
compinit

# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Opts
setopt appendhistory beep nomatch
unsetopt autocd extendedglob

# Vi mode
bindkey -v
bindkey '^?' backward-delete-char
bindkey '^H' backward-delete-char

## Vi mode cursor indicator
function updateCursor() {
	if [[ $TERM == rxvt-unicode* ]]; then
		if [ $KEYMAP = vicmd ]; then # Command mode
			echo -ne "\e[2 q" # Solid block
		else
			echo -ne "\e[6 q" # Vertical line
		fi
	fi
}
zle -N zle-keymap-select updateCursor
zle -N zle-line-init updateCursor

export PROMPT="
%F{blue}%~%F{white} %# "
