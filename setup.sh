#!/usr/bin/env bash
log () {
    printf "\033[0;32m$1\033[0m\n"
}

errormessage () {
    printf "\033[0;31m$1\033[0m\n"
}

NUMBER_OF_TASKS="6"

log "(1/${NUMBER_OF_TASKS}) Basic components"
bash -e ./setup_basic_components.sh

if [ $? -ne 0 ]; then
    errormessage "Fail to setup basic components, abort."
    exit 1
fi

log "(2/${NUMBER_OF_TASKS}) Zsh"
bash -e ./setup_zsh.sh

if [ $? -ne 0 ]; then
    errormessage "Fail to setup zsh, abort."
    exit 1
fi

log "(3/${NUMBER_OF_TASKS}) Languages (Python, Nodejs, Golang)"
bash -e ./setup_languages.sh

if [ $? -ne 0 ]; then
    errormessage "Fail to setup languages, abort."
    exit 1
fi

log "(4/${NUMBER_OF_TASKS}) Git"
bash -e ./setup_git.sh

if [ $? -ne 0 ]; then
    errormessage "Fail to setup git, abort."
    exit 1
fi

log "(5/${NUMBER_OF_TASKS}) Vim"
bash -e ./setup_vim.sh

if [ $? -ne 0 ]; then
    errormessage "Fail to setup vim, abort."
    exit 1
fi

log "(6/${NUMBER_OF_TASKS}) Tmux"
bash -e ./setup_tmux.sh

if [ $? -ne 0 ]; then
    errormessage "Fail to setup tmux, abort."
    exit 1
fi

log "Finished."
