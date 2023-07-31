function python_prompt_info() {
    local pyenv_name=$(pyenv version-name)
    local python_version=$(python -c 'import platform; print(platform.python_version())')

    if [[ -n $pyenv_name ]] && [[ $pyenv_name != $python_version ]]; then
        echo "$pyenv_name($python_version)"
    else
        echo "$python_version"
    fi
}

PROMPT='%n@%m% %{${fg[green]}%} 🐍$(python_prompt_info) $(git_prompt_info)%(?,,%{${fg_bold[white]}%}[%?]%{$reset_color%} )%{$fg[yellow]%}%#%{$reset_color%} '
RPROMPT='%{$fg[green]%}%~%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}ツ%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%F{#1e1e1e} %{$fg[red]%}凸%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
