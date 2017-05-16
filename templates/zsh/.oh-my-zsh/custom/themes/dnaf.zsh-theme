# dnaf.zsh-theme
#
#     Based on af-magic.zsh-theme
#     Repo: https://github.com/andyfleming/oh-my-zsh
#     Direct Link: https://github.com/andyfleming/oh-my-zsh/blob/master/themes/af-magic.zsh-theme

if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

# primary prompt
PROMPT='
%F{6}%~\
$(git_prompt_info) \
%F{6}$%f '
PROMPT2='%{%F{1}%}\ %f'
RPS1='${return_code}'

# color vars
eval my_gray='%F{18}'
eval my_orange='%F{3}'

# right prompt
if type "virtualenv_prompt_info" > /dev/null
then
	RPROMPT='$(virtualenv_prompt_info)$my_gray%n@%m%{$reset_color%}%'
else
	RPROMPT='$my_gray%n@%m%{$reset_color%}%'
fi

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="%F{13}("
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$my_orange*%F{13}"
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
