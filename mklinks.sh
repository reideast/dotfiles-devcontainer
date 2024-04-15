#!/bin/zsh

if [[ $(diff -q ~/.gitconfig .gitconfig-global) ]]; then
    echo "${YELLOW}You have modified ~/.gitconfig!${NOCOLOR} Git doesn't play nicely with symlinks..."
    echo "You must copy ~/.gitconfig to this folder before running ./mklinks!${NOCOLOR}"
    if read -q "?Do you want to (Y) copy ~/.gitconfig to ./.gitconfig-global or (N) overwrite your global ~/.gitconfig with the .dotfiles/.gitconfig-global? (Y/n/Ctrl+C to quit)? "; then
        echo; echo "${YELLOW}You are about to overwrite your .dotfiles/.gitconfig-global with the global ~/.gitconfig. ${RED}Are you sure you want to continue?${NOCOLOR}"
        if read -q "?Do you want to continue (y/N?) "; then
            echo; echo "Copying global git config into .dotfiles"
            cp ~/.gitconfig .gitconfig-global
        else
            echo; echo "Quitting. ${GREEN}Links were not made${NOCOLOR}"
            exit 1
        fi
    else
        echo; echo "${YELLOW}You are about to overwrite your global .gitconfig with the one stored in .dotfiles as .gitconfig-global. ${RED}Are you sure you want to continue?${NOCOLOR}"
        if read -q "?Do you want to continue (y/N?) "; then
            echo; echo "Global git config will be overwritten"
            # Note: will be done below as an 'ln -f' command
        else
            echo; echo "Quitting. ${GREEN}Links were not made${NOCOLOR}"
            exit 1
        fi
    fi
else
    echo "DEBUG: No changes in global .gitconfig vs .dotfiles version"  # TODO DEBUG
fi

ln -f .bash_profile ~/.bash_profile
ln -f .bash_alias-git ~/.bash_alias-git
ln -f .bashrc ~/.bashrc
ln -f .gitconfig-global ~/.gitconfig
ln -f .p10k.zsh ~/.p10k.zsh
ln -f .vimrc ~/.vimrc
ln -f .zsh-alias-git ~/.zsh-alias-git
ln -f .zsh-vi-input ~/.zsh-vi-input
ln -f .zshrc ~/.zshrc

echo "Finished. ${GREEN}Links have been made${NOCOLOR}"

