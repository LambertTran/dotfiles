#!/bin/bash

echo "----- Link bash_aliases ------"
rm ~/.bash_aliases 
ln -s ${PWD}/.bash_aliases ~/.bash_aliases

echo "----- Make emacs backup folder -----"
rm -rf .saves

echo "----- Link emacs ------"
rm ~/.emacs
ln -s ${PWD}/.emacs ~/.emacs
