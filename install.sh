#! /bin/bash


####  Bash
path=`pwd .`
for file in bash/*; do
  basefile=`basename $file`
  #echo "$HOME/.$file"
  ln -sf "$path/$file" "$HOME/.$basename"
done

#### Vim
ln -sf "$path/vimrc" "$HOME/.vimrc"
ln -sf "$path/vim" "$HOME/.vim"
