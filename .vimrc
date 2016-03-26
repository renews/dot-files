" ==============================
" Start plugin management
" ===============================
call plug#begin('~/.vim/plugged')

" Essentials
Plug 'junegunn/vim-easy-align' " A simple, easy-to-use Vim alignment plugin.
Plug 'scrooloose/nerdtree' " NERD tree will be  loaded on the first invocation of NERDTreeToggle command
Plug 'airblade/vim-gitgutter' " A Vim plugin which shows a git diff in the 'gutter' (sign column)
Plug 'scrooloose/syntastic' " Check for code error, amazing!
Plug 'Xuyuanp/nerdtree-git-plugin' " A plugin of NERDTree showing git status flags
Plug 'sjl/gundo.vim' " Gundo.vim is Vim plugin to visualize your Vim undo tree.
Plug 'tpope/vim-fugitive' " GIT
Plug 'jreybert/vimagit' " Another git plugin
Plug 'majutsushi/tagbar' "browse the tags of the current file and get an overview of its structure.
Plug 'tpope/vim-sensible' " a universal set of defaults that (hopefully)  everyone can agree on.
Plug 'ervandew/supertab' " Supertab is a vim plugin which allows you to use  <Tab> for all your insert completion needs (:help ins-completion).
Plug 'bling/vim-airline' "Lean & mean status/tabline for vim thats light as air.
Plug 'bling/vim-bufferline' "Super simple vim plugin to show the list of buffers in the command bar.
Plug 'terryma/vim-multiple-cursors' " Sublime Texts awesome multiple selection feature into Vim
Plug 'tpope/vim-projectionist' " Projectionist provides granular project configuration using 'projections'
Plug 'tpope/vim-surround'  "  Surround.vim is all about 'surroundings': parentheses, brackets, quotes, XML tags, and more.
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer'} "YouCompleteMe is a fast, as-you-type, fuzzy-search code completion engine for Vim.
Plug 'dkprice/vim-easygrep' "Fast and Easy Find and Replace Across Multiple Files
Plug 'ctrlpvim/ctrlp.vim' "Amazing search plugin
" Plug 'Yggdroot/indentLine' " display the indention levels with thin vertical lines

" Utilities
Plug 'tpope/vim-commentary' "Comment stuff out.
Plug 'samsonw/vim-task' " Task manager
Plug 'rizzatti/dash.vim' "If youre a Mac user, you might know Dash.app, a really well made documentation App. You can use this plugin to search in Dash via :Dash <keyword>, or just type :Dash to search for the word under your cursor.
Plug 'junegunn/vim-xmark', { 'do': 'make' } " Markdown preview on OS X
Plug 'junegunn/tmux-complete.vim' " Vim plugin for insert mode completion of words in adjacent tmux panes
Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity'] } "Browse GitHub events (user dashboard, user/repo activity) in Vim.
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' } "fzf is a general-purpose command-line fuzzy finder.
Plug 'junegunn/fzf.vim'
"Plug 'wakatime/vim-wakatime' "Vim plugin to quantify your coding with  automatic time tracking and metrics about your programming.
Plug 'mattn/webapi-vim' " An Interface to WEB APIs.
Plug 'mattn/gist-vim'
Plug 'Raimondi/delimitMate' "This plug-in provides automatic closing of quotes, parenthesis, brackets, etc.
Plug 'itchyny/calendar.vim' "Calendar on vim?!
" Leverage the power of Vims compiler plugins without being bound by  synchronicity. Kick off builds and test suites using one of several
" asynchronous adapters (including tmux, screen, iTerm, Windows, and a headless  mode), and when the job completes, errors will be loaded and parsed
" automatically.
Plug 'tpope/vim-dispatch'
Plug 'Shougo/vimproc.vim', { 'do': 'make'}
Plug 'Shougo/vimshell.vim'
Plug 'nounoursheureux/vim-gulp'
Plug 'habamax/vim-skipit' " While INSERT mode on press <CTRL-L>l to skip everything until parentheses, bars or quotes and place cursor right after them.
Plug 'justinmk/vim-sneak' "Sneak is a minimalist, versatile Vim motion plugin that jumps to any location specified by two character

 " Asthetics
Plug 'junegunn/rainbow_parentheses.vim' "color parentheses according to  depth
Plug 'nathanaelkane/vim-indent-guides' "Indent Guides is a plugin for visually displaying indent levels in Vim.
Plug 'ryanoasis/vim-devicons'

 " Languages
Plug 'othree/html5.vim' "HTML5 + inline SVG omnicomplete function, indent and syntax for Vim
Plug 'kchmck/vim-coffee-script'
Plug 'junegunn/vim-journal' " syntax plugin for plain text files.
Plug 'kurko/smartest.vim' "Make your Vim smart when running your tests.
Plug 'burnettk/vim-angular'
Plug 'matthewsimo/angular-vim-snippets'
Plug 'pangloss/vim-javascript'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'tpope/vim-endwise'
Plug 'slim-template/vim-slim'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'} " Sparkup lets you write HTML code faster
Plug 'tpope/vim-bundler' " This is a lightweight bag of Vim goodies for Bundler
Plug 'tpope/vim-rake'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rbenv'
Plug 'tpope/vim-markdown' " sintax highlight for markdown
Plug 'skalnik/vim-vroom' "Run your Ruby tests! Supports RSpec, Test::Unit/MiniTest, Konacha, and Cucumber.
Plug 'cmather/vim-meteor-snippets'
Plug 'mustache/vim-mustache-handlebars'
Plug 'bonsaiben/bootstrap-snippets'
Plug 'rust-lang/rust.vim'
Plug 'rhysd/vim-crystal'
Plug 'pearofducks/ansible-vim' "This is a vim syntax plugin for Ansible 2.0, it supports YAML playbooks, Jinja2 templates, and Ansible's hosts files.
Plug 'hwartig/vim-seeing-is-believing'

" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils' | Plug 'garbas/vim-snipmate'

" Color Schemes
Plug 'junegunn/seoul256.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'chriskempson/base16-vim'
Plug 'tomasr/molokai'
Plug 'jpo/vim-railscasts-theme'
Plug 'KabbAmine/yowish.vim'
Plug 'marcopaganini/termschool-vim-theme'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'

" End plugin management
" ===============================
call plug#end()

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax on

set modelines=0

" mapeia saida para o visual mode para as teclas j+k
inoremap jk <ESC>

" remapeia a leader key para a barra de espaço
let mapleader = "\<Space>"
filetype on " Automatically detect file typess.

" tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab " tabs are converted to spaces, use only when required

" basic config
set history=1000  " Number of things to remember in history
set shell=/bin/zsh
set guifont=Menlo:h18
set encoding=utf-8
set scrolloff=3
set undofile
set undodir=~/.vim/undodir
set sm
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line youre currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
" set nostartofline


" improve performance on large files
set re=1

set showmode
set showcmd " Show partial commands in the last line of the screen
set hidden " window and switch from an unsaved buffer without saving it first
set wildmenu " Better command-line completion
set wildmode=longest:full,full
set wildignore+=tags,.*.un~,*.pyc " ignore this files
set visualbell " Use visual bell instead of beeping when doing something wrong

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
" set t_vb=

" Set the command window height to 2 lines, to avoid many cases of having to
" press <Enter> to continue"
set cmdheight=2

set ttyfast
set ruler " Display the cursor position on the last line of the screen or in the status line of a window
set backspace=indent,eol,start " Allow backspacing over autoindent, line breaks and start of insert action
set laststatus=2 " Always display the status line, even if only one window is displayed
set number " Display line numbers on the left
set relativenumber
set notimeout ttimeout ttimeoutlen=50 " Quickly time out on keycodes, but never time out on mappings
set timeoutlen=1200 " A little bit more time for macros

" Enable use of the mouse for all modes
" set mouse=a

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

set gdefault
set incsearch
set showmatch  " Show matching brackets.
set hlsearch " Highlight searches
set wrap
set linebreak
set list
" set nolist
" set listchars=precedes:.
set formatoptions=qrn1
set spell spelllang=en_us "spell check language"
set nospell "ignore spell checking"
set colorcolumn=+1
set textwidth=89
set splitbelow
set splitright

au FocusLost * :wa "save on focus lost
" au VimEnter * call AirlineInit()

" If on GUI and not on terminal
if !has("gui_running") && $DISPLAY == '' || !has("gui")
  set mouse= " show mouse cursor
endif

" FUNCTIONS
" =========

" Add clock to Airline StatusBar
" function! AirlineInit()
"   let g:airline_section_z = airline#section#create(['ffenc', ' %{strftime("%d/%m - %H:%M")}'])
" endfunction

if has('eval')
  function! OpenURL(url)
    if has("win32")
      exe "!start cmd /cstart /b ".a:url.""
    elseif $DISPLAY !~ '^\w'
      exe "silent !tpope browse \"".a:url."\""
    elseif exists(':Start')
      exe "Start tpope browse -T \"".a:url."\""
    else
      exe "!tpope browse -T \"".a:url."\""
    endif
    redraw!
  endfunction

 command! -nargs=1 OpenURL :call OpenURL(<q-args>)

  " open URL under cursor in browser
  nnoremap gb :OpenURL <cfile><CR>
  nnoremap gA :OpenURL http://www.answers.com/<cword><CR>
  nnoremap gG :OpenURL http://www.google.com/search?q=<cword><CR>
  nnoremap gW :OpenURL http://en.wikipedia.org/wiki/Special:Search?search=<cword><CR>
endif


" ===========
" KEYBINDINGS
" ===========
imap <C-J> <Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger

" F1 ~ f12
" map <F3> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR> "search word under cursor
" nmap <F4> :Helptags<CR>
nnoremap <F5> :GundoToggle<CR>
nnoremap <F12> :Calendar<CR>

" special char's
map ,v :sp ~/.vimrc<cr> " edit my .vimrc file in a split
map ,e :e ~/.vimrc<cr>      " edit my .vimrc file
map ,u :source ~/.vimrc<cr> " update the system settings from my vimrc file

map ,t :TagbarToggle<CR>
nnoremap / /\v
vnoremap / /\v
vnoremap . :norm.<CR>

" preventing annoying error's
cmap W w
cmap Wq wq
nnoremap Q <nop>
vnoremap <c-r> :redo<CR>
" nnoremap <leader>s :set spell!
" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,  which is the default
map Y y$
map <C-e> :NERDTreeToggle<CR>
map <Left> :tabp<CR>
map <Right> :tabn<CR>
map <Up> :tabe

" Map Arrow Key for buffer navigation - CTRL + arrow
nnoremap <silent> <C-Right> <c-w>l
nnoremap <silent> <C-Left> <c-w>h
nnoremap <silent> <C-Up> <c-w>k
nnoremap <silent> <C-Down> <c-w>j
vnoremap <silent> <C-Right> <c-w>l
vnoremap <silent> <C-Left> <c-w>h
vnoremap <silent> <C-Up> <c-w>k
vnoremap <silent> <C-Down> <c-w>j

" leader shortcuts
nnoremap <leader>, :bprevious<cr>
nnoremap <leader>. :bnext<cr>
nnoremap <leader>u :GundoToggle<cr>
nnoremap <leader>x :%s/\s\+$//<cr>:let @/=''<cr>
nnoremap <leader>a :Ag
nnoremap <leader>ft vatzf
nnoremap <leader>b ?{<cr>jv/^\s*\}?$<cr>k:sort<cr>:noh<cr>
nnoremap <leader>q gqip

" split window
nnoremap <leader>v <c-w>v
nnoremap <leader>s <c-w>s
nnoremap <leader>w <c-w><c-w>

nnoremap <leader>q gqip
nnoremap <leader>f 1z=

" nnoremap <leader>s ]s

" insert date
nnoremap <leader>d :read !date<cr>

" repeat last shell command 
nnoremap <leader>r :!!<cr>

" select paragraph in visual mode
nnoremap <leader>j vipj

" yank line to clipboard
nnoremap <leader>yl "+yy<cr>
" yank full file to clipboard
nnoremap <leader>yf :%y+<cr>
" paste from clipboard
nnoremap <leader>p "+p<cr><cr>

" <ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <c-l> :nohl<cr><c-l>

nnoremap <leader>e :Explore<cr><cr>
nnoremap <leader>n :set nonumber!<CR>
nnoremap <leader>rn :set norelativenumber!<CR>
nnoremap <leader>pa :set nopaste!<CR>
nnoremap <leader>rc :so $MYVIMRC<CR>
nnoremap <leader>clear :%s/\s\+$//<CR><CR>
" Map :w

set wm=10 " This sets the minimum window height to N
set winheight=49 " when this buffer get the focus, change the height to

" Use <F11> to toggle between 'paste' and 'nopaste'
" set pastetoggle=<F11>
" Keyboard mapping for numeric keypad
imap <Esc>OM <c-m>
 map <Esc>OM <c-m>
imap <Esc>OP <nop>
 map <Esc>OP <nop>
imap <Esc>OQ /
 map <Esc>OQ /
imap <Esc>OR *
 map <Esc>OR *
imap <Esc>OS -
 map <Esc>OS -

imap <Esc>Ol +
imap <Esc>Om -
imap <Esc>On ,
imap <Esc>Op 0
imap <Esc>Oq 1
imap <Esc>Or 2
imap <Esc>Os 3
imap <Esc>Ot 4
imap <Esc>Ou 5
imap <Esc>Ov 6
imap <Esc>Ow 7
imap <Esc>Ox 8
imap <Esc>Oy 9
imap <Esc>Oz 0

" ==========
" Aesthetics
" ==========
set background=dark

" let g:indentLine_color_gui = '#A4E57E'
" let g:indentLine_char = '┊'
" let g:indentLine_enabled = 1
" let g:indentLine_leadingSpaceEnabled = 1
" let g:indentLine_leadingSpaceChar = '.'
"""""" seoul256 (dark):
"Range:   233 (darkest) ~ 239 (lightest)
"Default: 237
let g:seoul256_background = 233
" colo seoul256
" colo solarized
" colo molokai
colo railscasts
" colo onedark
" colo gruvbox
" colo yowish
" colo termschool


" Indentation styles
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 2
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey

if has('gui_running')
  set guifont=droid\ sans\ mono\ for\ powerline\ plus\ nerd\ file\ types:h11 "ryanoasis/vim-devicons
endif

let g:airline_powerline_fonts = 1


"""""""" Backups & Files
set backup                     " Enable creation of backup file.
set backupdir=~/.vim/tmp/backups " Where backups will go.
set directory=~/.vim/tmp     " Where temporary files will go.

""""""" Plugins configuration
"CTRl-P search plugin

"Exclude files and directories using Vim's wildignore and CtrlP's own
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.un~     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.un~      " Windows

" let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
" let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'  " Windows

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$'
  \ }

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-X>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_html_tidy_ignore_errors = [ "<ion-", "discarding unexpected </ion-", " proprietary attribute \"ng-" ]

" NERdTree - Open it automatically if no files specified.
" au StdinReadPre * let s:std_in=1
" au VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:NERDTreeWinSize=31

" Calendar
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

" Style for NerdTree git plugin
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" " ----------------------------------------------------------------------------
" " vimawesome.com
" " ----------------------------------------------------------------------------
" function! VimAwesomeComplete() abort
"   let prefix = matchstr(strpart(getline('.'), 0, col('.') - 1), '[.a-zA-Z0-9_/-]*$')
"   echohl WarningMsg
"   echo 'Downloading plugin list from VimAwesome'
"   echohl None
" ruby << EOF
"   require 'json'
"   require 'open-uri'

"   query = VIM::evaluate('prefix').gsub('/', '%20')
"   items = 1.upto(max_pages = 3).map do |page|
"   Thread.new do
"     url  = "http://vimawesome.com/api/plugins?page=#{page}&query=#{query}"
"     data = open(url).read
"     json = JSON.parse(data, symbolize_names: true)
"     json[:plugins].map do |info|
"       pair = info.values_at :github_owner, :github_repo_name
"       next if pair.any? { |e| e.nil? || e.empty? }
"       {word: pair.join('/'),
"        menu: info[:category].to_s,
"        info: info.values_at(:short_desc, :author).compact.join($/)}
"       end.compact
"     end
"   end.each(&:join).map(&:value).inject(:+)
"   VIM::command("let cands = #{JSON.dump items}")
" EOF
"   if !empty(cands)
"     inoremap <buffer> <c-v> <c-n>
"     augroup _VimAwesomeComplete
"       au!
"       au CursorMovedI,InsertLeave * iunmap <buffer> <c-v>
"               \| au! _VimAwesomeComplete
"     augroup END

"     call complete(col('.') - strchars(prefix), cands)
"   endif
"   return ''
" endfunction

augroup VimAwesomeComplete
  au!
  au FileType vim inoremap <c-x><c-v> <c-r>=VimAwesomeComplete()<cr>
augroup END


" Javascript Libraries - https://github.com/othree/javascript-libraries-syntax.vim
let g:used_javascript_libs = 'underscore,angularjs,angularui,angularuirouter,jquery,react'

" https://github.com/pangloss/vim-javascript - JavaScript bundle for vim, this
" bundle provides syntax and indent plugins.
let g:javascript_enable_domhtmlcss = 1
let g:javascript_ignore_javaScriptdoc = 0
let g:javascript_conceal_function   = "ƒ"
let g:javascript_conceal_null       = "ø"
let g:javascript_conceal_this       = "@"
let g:javascript_conceal_return     = "⇚"
let g:javascript_conceal_undefined  = "¿"
let g:javascript_conceal_NaN        = "ℕ"
let g:javascript_conceal_prototype  = "¶"
let g:javascript_conceal_static     = "•"
let g:javascript_conceal_super      = "Ω"

""GitGutter
"let g:gitgutter_enabled = 0 "To turn off vim-gitgutter by default
"let g:gitgutter_signs = 0 "To turn off signs by default
"let g:gitgutter_highlight_lines = 1 "To turn on line highlighting by default

  " LANGUAGES
  " =========
if has("au")
  " Filetypes (au = au)
  au FileType helpfile set nonumber      " no line numbers when viewing help
  au FileType helpfile nnoremap <buffer><cr> <c-]> " Enter selects subject
  au FileType helpfile nnoremap <buffer><bs> <c-T> " Backspace to go back

  " Set filetypes
  au BufNewFile,BufReadPost *.md set filetype=markdown
  au BufNewFile,BufReadPost *.rb set filetype=ruby

  au FileType sh,zsh,csh,tcsh        inoremap <silent> <buffer> <C-X>! #!/bin/<C-R>=&ft<CR>
  au FileType sh,zsh,csh,tcsh        let &l:path = substitute($PATH, ':', ',', 'g')
  au FileType perl,python,ruby       inoremap <silent> <buffer> <C-X>! #!/usr/bin/env<Space><C-R>=&ft<CR>
  au FileType c,cpp,cs,java,perl,javscript,php,aspperl,tex,css let b:surround_101 = "\r\n}"
  au FileType apache       setlocal commentstring=#\ %s
  au FileType cucumber let b:dispatch = 'cucumber %' | imap <buffer><expr> <Tab> pumvisible() ? "\<C-N>" : (CucumberComplete(1,'') >= 0 ? "\<C-X>\<C-O>" : (getline('.') =~ '\S' ? ' ' : "\<C-I>"))
  au FileType git,gitcommit setlocal foldmethod=syntax foldlevel=1
  au FileType gitcommit setlocal spell
  au FileType gitrebase nnoremap <buffer> S :Cycle<CR>
  au FileType help setlocal ai fo+=2n | silent! setlocal nospell
  au FileType help nnoremap <silent><buffer> q :q<CR>
  au FileType html setlocal iskeyword+=~ | let b:dispatch = ':OpenURL %'
  au FileType lua  setlocal includeexpr=substitute(v:fname,'\\.','/','g').'.lua'
  au FileType perl let b:dispatch = 'perl -Wc %'
  au FileType ruby setlocal tw=79 comments=:#\  isfname+=:
  au FileType ruby
        \ let b:start = executable('pry') ? 'pry -r "%:p"' : 'irb -r "%:p"' |
         \ if expand('%') =~# '_test\.rb$' |
         \   let b:dispatch = 'testrb %' |
         \ elseif expand('%') =~# '_spec\.rb$' |
         \   let b:dispatch = 'rspec %' |
         \ elseif !exists('b:dispatch') |
         \   let b:dispatch = 'ruby -wc %' |
         \ endif
 " au FileType vim  setlocal keywordprg=:help |
 "         \ if exists(':Runtime') |
 "         \   let b:dispatch = ':Runtime' |
 "         \   let b:start = ':Runtime|PP' |
 "         \ else |
 "         \   let b:dispatch = ":unlet! g:loaded_{expand('%:t:r')}|source %" |
 "         \ endif
endif


augroup seeingIsBelievingSettings
  autocmd!

  " autocmd FileType ruby nmap <buffer> <Enter> <Plug>(seeing-is-believing-mark-and-run)
  " autocmd FileType ruby xmap <buffer> <Enter> <Plug>(seeing-is-believing-mark-and-run)

  autocmd FileType ruby nmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
  autocmd FileType ruby xmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
  autocmd FileType ruby imap <buffer> <F4> <Plug>(seeing-is-believing-mark)

  autocmd FileType ruby nmap <buffer> <F5> <Plug>(seeing-is-believing-run)
  autocmd FileType ruby imap <buffer> <F5> <Plug>(seeing-is-believing-run)
augroup END


" fix spelling
iab widht width
iab heigth heigth
iab avassalador dig dim dig dim
iab cl console.log('');
