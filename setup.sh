#!/bin/bash

rm ~/.bash_aliases 
rm ~/.emacs
ln -s ${PWD}/.bash_aliases ~/.bash_aliases
ln -s ${PWD}/.emacs ~/.emacs
