# dnaf.zsh-theme
#
#     Based loosely on af-magic.zsh-theme
#     Repo: https://github.com/andyfleming/oh-my-zsh
#     Direct Link: https://github.com/andyfleming/oh-my-zsh/blob/master/themes/af-magic.zsh-theme

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

# primary prompt
PROMPT='
'
PROMPT+='%F{4}%n@%M' # user@host
PROMPT+='%F{8}:' # :
PROMPT+='%F{7}%~' # ~/current/working/directory
PROMPT+='$(git_prompt_info) ' # git stuff
PROMPT+='%(?.%F{green}.%F{red})$ %f' # dollar sign is red if error, otherwise green

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="%F{13}("
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%F{11}*%F{13}"
ZSH_THEME_GIT_PROMPT_SUFFIX=")%f"
