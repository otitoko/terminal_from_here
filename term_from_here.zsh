function open-terminal-in-same-dir() {
  alacritty --working-directory="$PWD"
}
zle -N open-terminal-in-same-dir
bindkey '^[\' open-terminal-in-same-dir
