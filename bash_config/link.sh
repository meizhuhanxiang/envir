#! /bin/bash

path=`pwd .`
for file in bash*; do
  #echo "$path/$file"
  #echo "$HOME/.$file"
  ln -sf "$path/$file" "$HOME/.$file"
done
