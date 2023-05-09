function python_prompt_info() {
    local pyenv_name=$(pyenv version-name)
    local python_version=$(python -c 'import platform; print(platform.python_version())')

    if [[ -n $pyenv_name ]] && [[ $pyenv_name != $python_version ]]; then
        echo "$pyenv_name($python_version)"
    else
        echo "$python_version"
    fi
}

function separator() {
    # echo -e "%F{#2d2d2d}\u200b%f" # zero width space: Hair Space 	[ ] (https://emptycharacter.com/)
    # echo -e "%F{#2d2d2d}\u00A0%f" # no-break space
    echo -e "%F{#2d2d2d}\u0020%f" # regular space
    # echo "%F{#2d2d2d}|%f"
    # TEST SEPARATOR WORD SEPARATOR
}

PROMPT='%n@%m% %{${fg[green]}%} 🐍$(python_prompt_info) $(git_prompt_info)%(?,,%{${fg_bold[white]}%}[%?]%{$reset_color%} )%{$fg[yellow]%}%#%{$reset_color%} '
RPROMPT='%{$fg[green]%}%~%{$reset_color%}'

# original blue: #2472c8
# slightly darker: #175599
# original green: #2cbc78
# slightly darker: #1e9e6c

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}ツ%F{#1e1e1e} %{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%F{#1e1e1e} %{$fg[red]%}凸%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
