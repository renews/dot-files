
" Setup ----------------------------------------------------------{{{
" If DEIN is not installed, do it first
if (!isdirectory(expand("$HOME/.vim/bundles/repos/github.com/Shougo/dein.vim")))
	call system(expand("mkdir -p $HOME/.vim/bundles/repos/github.com"))
	call system(expand("git clone https://github.com/Shougo/dein.vim $HOME/.vim/bundles/repos/github.com/Shougo/dein.vim"))
endif

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundles/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.vim/bundles')
  call dein#begin('~/.vim/bundles')

  " Let dein manage dein
  " Required:
  call dein#add('~/.vim/bundles/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  
  " Custom Plugins
  call dein#add('vim-airline/vim-airline')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

