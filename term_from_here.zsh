open_terminal_in_same_dir() {
    local terminal=$(ps -p $(ps -p $$ -o ppid=) -o args=)

    if [[ "$terminal" == *"--working-directory"* ]]; then
        eval "$terminal" &> /dev/null &
    else
    eval "$terminal --working-directory="$PWD"" &
    fi
}
zle -N open_terminal_in_same_dir
bindkey '^[\' open_terminal_in_same_dir
