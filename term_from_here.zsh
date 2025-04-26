open_terminal_in_same_dir() {
    local terminal=$(ps -p $(ps -p $$ -o ppid=) -o args=)
    eval "$terminal --working-directory="$PWD"" &
}
zle -N open_terminal_in_same_dir
bindkey '^[\' open_terminal_in_same_dir
