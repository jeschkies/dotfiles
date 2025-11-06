autoload colors && colors

autoload -Uz vcs_info
#zstyle ':vcs_info:git:*' formats '%b'
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' formats " %F{cyan}%c%u(%b)%f"
zstyle ':vcs_info:*' actionformats " %F{cyan}%c%u(%b)%f %a"
zstyle ':vcs_info:*' stagedstr "%F{green}"
zstyle ':vcs_info:*' unstagedstr "%F{red}"
zstyle ':vcs_info:*' check-for-changes true

git_info() {
  vcs_info
  echo "${vcs_info_msg_0_}"
}

directory_name() {
  echo "%{$fg_bold[blue]%}%1/%\/%{$reset_color%}"
}

export PROMPT=$'\n[$(date "+%Y-%m-%d %H:%M:%S %z")] in $(directory_name) $(git_info)\n› '
set_prompt () {
  export RPROMPT="%{$fg_bold[cyan]%}%{$reset_color%}"
}

precmd() {
  title "zsh" "%m" "%55<...<%~"
  set_prompt
}
