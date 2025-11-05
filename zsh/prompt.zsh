autoload colors && colors

autoload -Uz vcs_info
zstyle ':vcs_info:git:*' formats '%b'

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
