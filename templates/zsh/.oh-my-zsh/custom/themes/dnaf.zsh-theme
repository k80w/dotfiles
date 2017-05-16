# dnaf.zsh-theme
#
#     Based on af-magic.zsh-theme
#     Repo: https://github.com/andyfleming/oh-my-zsh
#     Direct Link: https://github.com/andyfleming/oh-my-zsh/blob/master/themes/af-magic.zsh-theme

if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

# primary prompt
PROMPT='%{$reset_color%}
$FG[cyan]%~\
$(git_prompt_info) \
$FG[blue]%(!.#.»)%{$reset_color%} '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'

# right prompt
if type "virtualenv_prompt_info" > /dev/null
then
	RPROMPT='$(virtualenv_prompt_info)$FG[gray]%n@%m%{$reset_color%}%'
else
	RPROMPT='$FG[gray]%n@%m%{$reset_color%}%'
fi

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$FG[cyan](branch:"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$FG[yellow]*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[cyan])%{$reset_color%}"
