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
let s:bundle_dir = expand('~/.config/nvim/bundles')
let s:plugin_dir = s:bundle_dir . '/repos/github.com'

" Required:
if dein#load_state(s:bundle_dir)
  call dein#begin(s:bundle_dir)

  " Let dein manage dein
  " Required:
  call dein#add(s:plugin_dir . '/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  "--------------------------------------- 
  "--------------------------------------- 
  " Custom Plugins
  call dein#add('christoomey/vim-tmux-navigator')
  call dein#add('vim-airline/vim-airline')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('w0rp/ale')
  call dein#add('nelstrom/vim-visual-star-search')
  call dein#add('mileszs/ack.vim')
  call dein#add('Raimondi/delimitMate')
  call dein#add('mattn/emmet-vim')
  call dein#add('tpope/vim-commentary')
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-repeat')
  call dein#add('tpope/vim-fugitive')
  call dein#add('scrooloose/nerdtree')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('duff/vim-bufonly')
  call dein#add('gregsexton/MatchTag')
  call dein#add('sheerun/vim-polyglot')
  call dein#add('kristijanhusak/vim-hybrid-material')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/neosnippet')
  call dein#add('honza/vim-snippets')
  call dein#add('dyng/ctrlsf.vim')
  call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('junegunn/goyo.vim')

  "--------------------------------------- 
  "--------------------------------------- 

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

" ========================================
" ----------------------------------------
" Functions

" Relative numbering
function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
    set number
  else
    set rnu
  endif
endfunc

function! s:StripTrailingWhitespaces()
    let l:l = line(".")
    let l:c = col(".")
    %s/\s\+$//e
    call cursor(l:l, l:c)
endfunction

function! s:LoadLocalVimrc()
    if filereadable(glob(getcwd() . '/.vimrc.local'))
        :execute 'source '.fnameescape(glob(getcwd(). '/.vimrc.local'))
    endif
endfunction

function! Search()
    let term = input('Search for: ', '')
    if term != ''
        let path = input('Path: ', '', 'file')
        :execute 'Ack -Q "'.term.'" '.path
    endif
endfunction

" ========================================
" ----------------------------------------
" Keybinding configuration 

" Map the leader key to SPACE
let g:mapleader = "\<SPACE>"

" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "y
nnoremap  <leader>yy "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P
 
" " Use ; for commands.
nnoremap ; :
" Use  Q to execute default register.
nnoremap Q @q

" Toggle between normal and relative numbering.
nnoremap <leader>r :call NumberToggle()<cr>
 
" Search and Replace
nnoremap <leader>s :%s//g<Left><Left>

" =========== Abbreviations ==============
" ----------------------------------------
cnoreabbrev Wq wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qa qa
cnoreabbrev Bd bd
cnoreabbrev bD bd
cnoreabbrev wrap set wrap
cnoreabbrev nowrap set nowrap
cnoreabbrev bda BufOnly
cnoreabbrev t tabe
cnoreabbrev T tabe

" ========================================
" ----------------------------------------
" General Config
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
set ruler               " Show the line and column numbers of the cursor.
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=2           " Render TABs using this many spaces.
set shiftwidth=2        " Indentation amount for < and > commands.
set t_Co=256            " Set 256 colors
set title               " change the terminal's title
set noerrorbells        " No beeps.
set modeline            " Enable modeline.
set esckeys             " Cursor keys in insert mode.
set linespace=0         " Set line-spacing to minimum.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)
set history=500                                                                 "Store lots of :cmdline history
set gcr=a:blinkon500-blinkwait500-blinkoff500                                   "Set cursor blinking rate<Paste>
set cursorline                                                                  "Highlight current line
set list                " Show problematic characters.

" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

" ================ Search ================
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).
set path+=**                                                                    "Allow recursive search

" ================ Scrolling ==============

if !&scrolloff
  set scrolloff=3       " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
  set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif
set nostartofline       " Do not jump to first character with page commands.

" ====== Turn Off Swap Files ==============
"
set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
"
" " Keep undo history across sessions, by storing in file.
silent !mkdir ~/.config/nvim/backups > /dev/null 2>&1
set undodir=~/.config/nvim/backups
set undofile

" ================ Completion =======================

set wildmode=list:full
set wildignore=*.o,*.obj,*~                                                     "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*cache*
set wildignore+=*logs*
set wildignore+=*node_modules/**
set wildignore+=*DS_Store*
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" =============== Other's =======================
" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

" Also highlight all tabs and trailing whitespace characters.
" highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
" match ExtraWhitespace /\s\+$\|\t/

" Use <C-L> to clear the highlighting of :set hlsearch.  
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

