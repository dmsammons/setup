:imap jj <Esc>


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

let g:pymode_options_max_line_length=100
"let g:pymode_lint_ignore = "E501,W"

set nocompatible               " be improved, required
filetype off                   " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()            " required
Plugin 'VundleVim/Vundle.vim'  " required
Plugin 'altercation/vim-colors-solarized'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'python-mode/python-mode'
Plugin 'psf/black'
call vundle#end()               " required
filetype plugin indent on    " required

syntax enable
set background=dark
colorscheme solarized
syntax on

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

"Pylint configuration file
"let g:pymode_lint_config = '$HOME/pylint.rc'
autocmd FileType python set colorcolumn=100
"Run black everytime we save a file
autocmd BufWrite *.py :call black#Black()

"Return to last edit position when opening files
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif


set viminfo='100,<1000,s100,h

" Put plugins and dictionaries in this dir (also on Windows)
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    " Create dirs
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
endif
