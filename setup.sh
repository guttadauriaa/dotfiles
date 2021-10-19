#!/usr/bin/env bash
CURDATE=`date +%Y_%m_%d-%Hh%M`
CURDIR=$(pwd)

if [ -e ~/.bashrc ]
then
	mv ~/.bashrc{,-$CURDATE}
	ln -s ${CURDIR}/bash/bashrc ~/.bashrc 
fi

if [ -e ~/.bash_aliases ]
then
	mv ~/.bash_aliases{,-$CURDATE}
	ln -s ${CURDIR}/bash/bash_aliases ~/.bash_aliases
fi

if [ -e ~/.vimrc ]
then
	mv ~/.vimrc{,-$CURDATE}
fi

if [ ! -e ~/.vimrc ]
then
	ln -s ${CURDIR}/vim/vimrc ~/.vimrc
fi

if [ -e ~/.tmux.conf ]
then
	mv ~/.tmux.conf{,-$CURDATE}
	ln -s ${CURDIR}/tmux/tmux.conf ~/.tmux.conf
fi

