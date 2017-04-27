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
  call dein#add('diepm/vim-rest-console') " <C-j> execute the .rest file 

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
" Plugin configuration

" Rest Console, files .rest
let g:vrc_trigger = '<C-m>'

" CtrlP
" Open buffer menu
nnoremap <Leader>bo :CtrlPBuffer<CR>

let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:25,results:25'           "Ctrlp window setup
let g:ctrlp_custom_ignore = {'dir':  '\v[\/]\.(meteor|hg|git|svn)$'}                       "Ignore .meteor folder
let g:ctrlp_prompt_mappings = {'PrtDeleteEnt()': ['@']}                         "Map delete buffer in ctrlp
"let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'                           "Use ag for searching

" let g:airline_powerline_fonts = 1                                               "Enable powerline fonts
" let g:airline_theme = "hybrid"                                                  "Set theme to powerline default theme
" let g:airline_section_y = '%{substitute(getcwd(), expand("$HOME"), "~", "g")}'  "Set relative path
" let g:airline#extensions#whitespace#enabled = 0                                 "Disable whitespace extension
" let g:airline#extensions#tabline#enabled = 1                                    "Enable tabline extension
" let g:airline#extensions#tabline#left_sep = ' '                                 "Left separator for tabline
" let g:airline#extensions#tabline#left_alt_sep = '│'                             "Right separator for tabline

let g:gitgutter_realtime = 1                                                    "Enable gitgutter in realtime
let g:gitgutter_eager = 1                                                       "Enable gitgutter to eager load on tab or buffer switch

let g:user_emmet_expandabbr_key = '<c-e>'                                       "Change trigger emmet key
let g:user_emmet_next_key = '<c-n>'                                             "Change trigger jump to next for emmet

let g:NERDTreeChDirMode = 2                                                     "Always change the root directory
let g:NERDTreeMinimalUI = 1                                                     "Disable help text and bookmark title
let g:NERDTreeShowHidden = 1                                                    "Show hidden files in NERDTree
let g:NERDTreeIgnore=['\.git$', '\.sass-cache$', '\.vagrant', '\.idea']

let g:neosnippet#disable_runtime_snippets = {'_' : 1}                           "Snippets setup
let g:neosnippet#snippets_directory = [
            \ s:plugin_dir . '/honza/vim-snippets/snippets',
            \ '~/.config/nvim/snippets']

let g:deoplete#enable_at_startup = 1                                            "Enable deoplete autocompletion
let g:deoplete#file#enable_buffer_path = 1                                      "Autocomplete files relative to current buffer

let g:ackhighlight = 1                                                          "Highlight current search
" let g:ackprg = 'ag --vimgrep'                                                   "Use ag instead of ack for searching

let g:delimitMate_expand_cr = 1                                                 "auto indent on enter

let g:ale_linters = {'javascript': ['eslint']}                                  "Lint js with eslint
let g:ale_lint_on_save = 1                                                      "Lint when saving a file
let g:ale_sign_error = '✖'                                                      "Lint error sign
let g:ale_sign_warning = '⚠'                                                    "Lint warning sign

let g:goyo_width = 100                                                          "100 chars width
let g:goyo_height = 100                                                         "100% height

let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '                                "Set up spacing for sidebar icons

let g:jsx_ext_required = 1                                                      "Force jsx extension for jsx filetype



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

" => to :, " to ' and add spaces
function! PrettyHash()
  :Bashrockets
  :silent! s/\"\([a-zA-Z_]*\)\"\:/\1\:\ /g
  :silent! s/\(\w\|\}\|\'\|\"\)\:\(\w\|{\|\'\|\"\)/\1\: \2/g
  :silent! s/\"/\'/g
  :silent! s/\(\w\|\}\|\'\|\"\),\(\w\)/\1, \2/g
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

" Copy to system clipboard
vnoremap <C-c> "+y

" Paste from system clipboard with Ctrl + v
inoremap <C-v> <Esc>"+p

" Move to the end of yanked text after yank and paste
nnoremap p p`]
vnoremap y y`]
vnoremap p p`]

" Use ; for commands.
nnoremap ; :

" Use  Q to execute default register.
nnoremap Q @q

" Toggle between normal and relative numbering.
nnoremap <leader>r :call NumberToggle()<cr>
 
" Search and Replace
nnoremap <leader>s :%s//g<Left><Left>

" Map save to Ctrl + S
map <c-s> :w<CR>
imap <c-s> <C-o>:w<CR>

" Easier window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Open vertical split
nnoremap <Leader>v <C-w>v

" Expand snippets on tab if snippets exists, otherwise do autocompletion
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\ : pumvisible() ? "\<C-n>" : "\<TAB>"
" If popup window is visible do autocompletion from back
imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" Fix for jumping over placeholders for neosnippet
smap <expr><TAB> neosnippet#jumpable() ?
\ "\<Plug>(neosnippet_jump)"
\: "\<TAB>"

" Map for Escape key
inoremap jj <Esc>

" Yank to the end of the line
nnoremap Y y$

" Move line(s) of text using Alt+j/k
nnoremap <silent> <A-j> :m+<CR>==
nnoremap <silent> <A-k> :m-2<CR>==
inoremap <silent> <A-j> <Esc>:m+<CR>==gi
inoremap <silent> <A-k> <Esc>:m-2<CR>==gi
vnoremap <silent> <A-j> :m'>+<CR>gv=gv
vnoremap <silent> <A-k> :m-2<CR>gv=gv

" Clear search highlight
  nnoremap <Leader><space> :noh<CR>

" Toggle distraction free mode
nnoremap <Leader>g :Goyo<CR>

nnoremap <Leader>e :lopen<CR>
nnoremap <Leader>q :lclose<CR>

" Find current file in NERDTree
nnoremap <Leader>hf :NERDTreeFind<CR>

" Open NERDTree
nnoremap <Leader>n :NERDTreeToggle<CR>

" Toggle between last 2 buffers
nnoremap <leader><tab> <c-^>

" Auto change directory to match current file
nnoremap <Leader>dc :cd %:p:h<CR>:pwd<CR>

" Filesearch plugin map for searching in whole folder
nnoremap <Leader>f :call Search()<CR>
nnoremap <Leader>af :CtrlSF

" Toggle buffer list
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>t :CtrlPBufTag<CR>

" Maps for indentation in normal mode
nnoremap <tab> >
nnoremap <s-tab> <

" Indenting in visual mode
xnoremap <s-tab> <gv
xnoremap <tab> >gv

" Resize window with shift + and shift -
nnoremap + <c-w>5>
nnoremap _ <c-w>5<

" Center highlighted search
nnoremap n nzz
nnoremap N Nzz

vnoremap <silent> <leader>h :call PrettyHash()<cr>

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
set rnu                 " Set relative number

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
set wildignore+=tmp/**,bundles/**
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit
set wildignore+=*.luac                           " Lua byte code
set wildignore+=migrations                       " Django migrations
set wildignore+=*.pyc                            " Python byte code
set wildignore+=classes
set wildignore+=log
set wildignore+=source_maps                      " Compiled coffeescript/etc
set wildignore+=bower_components                 " Bower components
set wildignore+=public                           " Public dir
set wildignore+=node_modules


" =============== Other's =======================
" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

" Also highlight all tabs and trailing whitespace characters.
" highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
" match ExtraWhitespace /\s\+$\|\t/


" =============== File Type =======================
" -------------------------------------------------
augroup file-types
  autocmd!

  autocmd BufEnter *.html set ft=xhtml
  autocmd BufEnter */nginx/*.conf* set ft=nginx
  autocmd BufEnter *.html.erb source $HOME/.config/nvim/repos/repos/github.com/othree/html5.vim/syntax/html.vim
  autocmd BufEnter *.es6 set ft=javascript

  autocmd BufEnter *.prawn set ft=ruby
  autocmd BufEnter Guardfile set ft=ruby
  autocmd BufEnter Gemfile set ft=ruby
  autocmd BufEnter *.slim set ft=slim
  autocmd BufEnter *.rest set ft=rest
  " fdoc is yaml
	autocmd BufRead,BufNewFile *.fdoc set filetype=yaml
	" md is markdown
	autocmd BufRead,BufNewFile *.md set filetype=markdown
	autocmd BufRead,BufNewFile *.md set spell
	" extra rails.vim help
	autocmd User Rails silent! Rnavcommand decorator      app/decorators            -glob=**/* -suffix=_decorator.rb
	autocmd User Rails silent! Rnavcommand observer       app/observers             -glob=**/* -suffix=_observer.rb
	autocmd User Rails silent! Rnavcommand feature        features                  -glob=**/* -suffix=.feature
	autocmd User Rails silent! Rnavcommand job            app/jobs                  -glob=**/* -suffix=_job.rb
	autocmd User Rails silent! Rnavcommand mediator       app/mediators             -glob=**/* -suffix=_mediator.rb
	autocmd User Rails silent! Rnavcommand stepdefinition features/step_definitions -glob=**/* -suffix=_steps.rb
	" automatically rebalance windows on vim resize
	autocmd VimResized * :wincmd =

	" Fix Cursor in TMUX
	if exists('$TMUX')
		let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
		let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
	else
		let &t_SI = "\<Esc>]50;CursorShape=1\x7"
		let &t_EI = "\<Esc>]50;CursorShape=0\x7"
	endif
augroup END



" =============== Languages =======================
" -------------------------------------------------
let g:gutentags_project_root = ['package.json', 'Brocfile.js', 'Capfile', 'Rakefile', 'bower.json', '.ruby-version', 'Gemfile']
let g:javascript_enable_domhtmlcss = 1
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

augroup vimrc-ruby
  autocmd!
  autocmd BufNewFile,BufRead *.rb,*.rbw,*.gemspec setlocal filetype=ruby
  autocmd FileType ruby setlocal tabstop=4 softtabstop=2 shiftwidth=2 expandtab
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Running tests
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Write the file and run tests for the given filename
function! RunTests(filename)
  :w
  :tabnew
  :call termopen([&sh, &shcf, "rspec " . a:filename], {'name':'running-tests'})
  :startinsert
endfunction

"" Run tests in a neovim or tmux split
nmap <silent> <leader>r :TestNearest<CR>
nmap <silent> <leader>R :TestFile<CR>
nmap <silent> <leader>ta :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tg :TestVisit<CR>
if has('nvim')
  function! NeovimSplit(cmd)
  :w
  :split
  :enew
  :call termopen([&sh, &shcf, a:cmd])
  :startinsert
  endfunction

  let g:test#custom_strategies = {'neovim_split': function('NeovimSplit')}
  let g:test#strategy = 'neovim_split'
  " Use <esc> to get to normal mode in the terminal split
  tnoremap <esc> <C-\><C-n>
else
  let g:test#strategy = 'vimux'
endif

