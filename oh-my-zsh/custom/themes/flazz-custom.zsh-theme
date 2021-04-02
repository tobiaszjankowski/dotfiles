if [ "$USER" = "root" ]
then CARETCOLOR="red"
else CARETCOLOR="blue"
fi

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

PROMPT='%m%{${fg_bold[magenta]}%} :: %{$reset_color%}%{${fg[green]}%}%3~ $(git_prompt_info) $(vi_mode_prompt_info) %{${fg_bold[$CARETCOLOR]}%}%#%{${reset_color}%} '

RPS1='${return_code}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[cyan]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"

MODE_INDICATOR="%{$fg_bold[magenta]%}<%{$reset_color%}%{$fg[magenta]%}<<%{$reset_color%}"
VI_INSERT_INDICATOR="%{$fg_bold[green]%}>%{$reset_color%}%{$fg[green]%}>>%{$reset_color%}"

# TODO use 265 colors
#MODE_INDICATOR="$FX[bold]$FG[020]<$FX[no_bold]%{$fg[blue]%}<<%{$reset_color%}"
# TODO use two lines if git
