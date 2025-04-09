" set compatibility to vim only
set nocompatible

" show line numbers
set number

" status bar
set laststatus=2

" automatically wrap text that extends beyond the screen
set wrap

" encoding
set encoding=utf-8

" syntax highlighting
syntax on

" call the .vimrc.plug file
if filereadable(expand("~/.vimrc.plug"))
  source ~/.vimrc.plug
endif