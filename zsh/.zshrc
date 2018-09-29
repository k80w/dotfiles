zstyle ':completion:*' completer _expand _complete _ignored
zstyle :compinstall filename '/home/dnaf/.zshrc'

autoload -Uz compinit
compinit

# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Opts
setopt incappendhistory beep nomatch interactivecomments
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

# Fun quote stuff
#QUOTEFILE=~/quotes.tsv
function centertext() {
	printf "%*s\n" $(((${#1}+$2)/2)) "$1"
}
function printquote() {
	text=$(cut -f1 - <<< $1)
	author=$(cut -f2 - <<< $1)
	cols=$(tput cols)
	width=$(($cols<80?$cols:80))
	echo
	echo "$text" | fmt -w $width | while read -r line; do
		centertext "$line" $width
	done
	echo "$author" | fmt -w $width | while read -r line; do
		printf "\033[0;90m"
		centertext "$line" $width
	done
}
function randomquote() {
	printquote "$(getrandomquote)"
}
function getrandomquote() {
	echo -e "$(fortune lemons)\t$(fortune lemonauthors)"
}

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search


# Prompt
export PROMPT="
%n@%m %F{blue}%~%F{white} %# "

# Aliases
alias vim=nvim
alias ls="ls --color"
alias ip="ip -br -c"

# Variables
export PATH=$PATH:~/bin
export GOPATH=~
export EDITOR=nvim

## Ruby gems
if which ruby >/dev/null && which gem >/dev/null; then
	export PATH="$(ruby -r rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi

randomquote
