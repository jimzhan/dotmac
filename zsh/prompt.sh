escape=$'\033'
percent=$'\%'

local cwd="%{$fg[blue]%}%3~%{$reset_color%}"
local host="%{$fg[yellow]%}%m%{$reset_color%}"
local user_host='%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}'

local linebreak=$'\n'
local lineup=$'\e[1A'
local linedown=$'\e[1B'
local address="`ifconfig | grep "inet " | grep -v 127.0.0. | awk '{ print $2  }'`"
#----------------------------------
# Internet Connectivity (Mac Only)
#----------------------------------
# work with $HOME/.online via $HOME/Library/LaunchAgents/io.goanywhere.connectivity.plist
OnlinePrompt() {
  if [ -f $HOME/.online ]; then
    echo "%{$fg[red]%}❤ %{$reset_color%}"
  else
    echo "%{$fg[yellow]%}❤ %{$reset_color%}"
  fi
}

#-------------------
# Powerline + Prompt
#-------------------
PROMPT='╭ ${cwd} $(git_prompt_info) ${linebreak}╰ $(OnlinePrompt) '
RPROMPT=%{${lineup}%}%{$fg[yellow]%}[%D{%Y-%m-%d}]%{$reset_color%}%{${linedown}%}
