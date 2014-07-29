# Clean, simple, compatible and meaningful.

# Machine name.
function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || hostname
}

PATH=$HOME/local/bin:$PATH

# Directory info.
local current_dir='${PWD/#$HOME/~}'

# Git info.
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="%F{245}(git@%F{111}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%F{245})"
ZSH_THEME_GIT_PROMPT_DIRTY="%F{1}*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Right prompt: current time
RPROMPT="%F{237}[%*]%F{255}"

# Prompt format: \n # USER at MACHINE in DIRECTORY on git:BRANCH STATE [TIME] \n $ 
PROMPT="
%{$reset_color%}\
%F{2}%n\
%F{208}@\
%F{208}$(box_name)\
%F{250}:\
%F{33}${current_dir}%{$reset_color%}\
${git_info}
%F{1}$ %{$reset_color%}"

if [[ "$(whoami)" == "root" ]]; then
PROMPT="
%{$terminfo[bold]$fg[blue]%}#%{$reset_color%} \
%{$bg[yellow]%}%{$fg[cyan]%}%n%{$reset_color%} \
%{$fg[white]%}at \
%{$fg[green]%}$(box_name) \
%{$fg[white]%}in \
%{$terminfo[bold]$fg[yellow]%}${current_dir}%{$reset_color%}\
${git_info} \
%{$fg[white]%}[%*]
%{$terminfo[bold]$fg[red]%}$ %{$reset_color%}"
fi
