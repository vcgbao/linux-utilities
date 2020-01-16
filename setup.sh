#!/bin/bash
alias_command="alias bv=$(pwd)/index.sh"

BASHRC=~/.bashrc
ZSHRC=~/.zshrc

if [ -f "$BASHRC" ]; then
    echo '#config baovo utilities' >> "$BASHRC"
    echo "$alias_command" >> "$BASHRC"

    echo 'done with bash shell!!'
fi

if [ -f "$ZSHRC" ]; then
    echo '#config baovo utilities' >> "$ZSHRC"
    echo "$alias_command" >> "$ZSHRC"
    echo 'done with zsh shell!!'
fi