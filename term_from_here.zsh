function open-terminal-in-same-dir() {
  $TERM --working-directory="$PWD" &
}
zle -N open-terminal-in-same-dir
bindkey '^[\' open-terminal-in-same-dir
