#! /bin/bash

#clean environment
rm -rf "$HOME/.bash*"
rm -rf "$HOME/.vim*"

####  Bash
path=`pwd .`
for file in bash/*; do
  basefile=`basename $file`
  #echo "$HOME/.$file"
  ln -sf "$path/$file" "$HOME/.$basefile"
done

#### Vim
ln -sf "$path/vimrc" "$HOME/.vimrc"
ln -sf "$path/vim" "$HOME/.vim"
