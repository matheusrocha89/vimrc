"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

""""""""""""""""""""""""""""""""""""""""""""""
" Fast saving
""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>w :w!<cr>

""""""""""""""""""""""""""""""""""""""""""""""
" Fast quiting
""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>q :q!<cr>

""""""""""""""""""""""""""""""""""""""""""""""
" Configure backspace so it acts as it should act
""""""""""""""""""""""""""""""""""""""""""""""
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

""""""""""""""""""""""""""""""""""""""""""""""
" Visual shifting (does not exit Visual mode)
""""""""""""""""""""""""""""""""""""""""""""""
vnoremap < <gv
vnoremap > >gv

""""""""""""""""""""""""""""""""""""""""""""""
" Enabling mouse scroll on vim inside iterm2
""""""""""""""""""""""""""""""""""""""""""""""
set mouse=nicr

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Basic configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number
set nowrap
set encoding=utf-8
set wildmode=longest,list,full
" this turns off physical line wrapping (ie: automatic insertion of newlines)
set textwidth=200
set wrapmargin=0
set tw=0
autocmd VimResized * :wincmd =


""""""""""""""""""""""""""""""""""""""""""""""
" removes the scrollbars
""""""""""""""""""""""""""""""""""""""""""""""
set guioptions-=r
set guioptions-=L

""""""""""""""""""""""""""""""""""""""""""""""
" Set to auto read when a file is changed from the outside
""""""""""""""""""""""""""""""""""""""""""""""
set autoread

""""""""""""""""""""""""""""""""""""""""""""""
"Always show current position
""""""""""""""""""""""""""""""""""""""""""""""
set ruler

""""""""""""""""""""""""""""""""""""""""""""""
" Ignore compiled files
""""""""""""""""""""""""""""""""""""""""""""""
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc,*.pyc,*.bak,*.swp,*.class

""""""""""""""""""""""""""""""""""""""""""""""
" Ignore case when searching
""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase

""""""""""""""""""""""""""""""""""""""""""""""
" When searching try to be smart about cases
""""""""""""""""""""""""""""""""""""""""""""""
set smartcase

""""""""""""""""""""""""""""""""""""""""""""""
" Highlight search results
""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch

""""""""""""""""""""""""""""""""""""""""""""""
" Makes search act like search in modern browsers
""""""""""""""""""""""""""""""""""""""""""""""
set incsearch

""""""""""""""""""""""""""""""""""""""""""""""
" Show matching brackets when text indicator is over them
""""""""""""""""""""""""""""""""""""""""""""""
set showmatch


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable
syntax on
set background=dark
let g:onedark_termcolors=256
" colorscheme onedark
colorscheme seti
" colorscheme hybrid_material
" colorscheme materialbox
" colorscheme vendetta
" colorscheme Tomorrow-Night-Bright
" colorscheme Tomorrow-Night-Eighties
" colorscheme Tomorrow-Night
" colorscheme atom-dark-256
" colorscheme coffee
" colorscheme flattened_dark
" colorscheme flattown
" colorscheme heroku
" colorscheme madeofcode
" colorscheme molokai
" colorscheme monochrome
" colorscheme mrkn256
" colorscheme rdark
" set cursorline

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

""""""""""""""""""""""""""""""""""""""""""""""
" Be smart when using tabs ;)
""""""""""""""""""""""""""""""""""""""""""""""
" set smarttab

""""""""""""""""""""""""""""""""""""""""""""""
" 1 tab == 2 spaces
""""""""""""""""""""""""""""""""""""""""""""""
set shiftwidth=2
set tabstop=2
set softtabstop=2

""""""""""""""""""""""""""""""""""""""""""""""
" Yank and past with the same clipboard
""""""""""""""""""""""""""""""""""""""""""""""
set clipboard^=unnamed

" set ai "Auto indent
" set si "Smart indent

""""""""""""""""""""""""""""""""""""""""""""""
" increase height of focused screen part
""""""""""""""""""""""""""""""""""""""""""""""
set winheight=5
set winminheight=5
set winheight=9999

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z
nmap <S-Enter> O<Esc>j
nmap <CR> o<Esc>k

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif
"""""""""""""""""""""""""""
" Remaping :only to maximize current pane
"""""""""""""""""""""""""""
nnoremap <C-W>O :call MaximizeToggle()<CR>
nnoremap <C-W>o :call MaximizeToggle()<CR>
nnoremap <C-W><C-O> :call MaximizeToggle()<CR>

function! MaximizeToggle()
  if exists("s:maximize_session")
    exec "source " . s:maximize_session
    call delete(s:maximize_session)
    unlet s:maximize_session
    let &hidden=s:maximize_hidden_save
    unlet s:maximize_hidden_save
  else
    let s:maximize_hidden_save = &hidden
    let s:maximize_session = tempname()
    set hidden
    exec "mksession! " . s:maximize_session
    only
  endif
endfunction

""""""""""""""""""""""""""""""""""""""""""""""
" Delete trailing white space on save, useful for Python and CoffeeScript ;)
""""""""""""""""""""""""""""""""""""""""""""""
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWritePre * %s/\s\+$//e
" autocmd BufWrite *.py :call DeleteTrailingWS()
" autocmd BufWrite *.coffee :call DeleteTrailingWS()
" autocmd BufWrite *.js :call DeleteTrailingWS()
" autocmd BufWrite *.jVkk :call DeleteTrailingWS()

""""""""""""""""""""""""""""""""""""""""""""""
"Plugins
""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-obsession'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'
Plug 'rking/ag.vim'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'mxw/vim-jsx'
Plug 'editorconfig/editorconfig-vim'
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'burnettk/vim-angular', {'for': 'javascript'}
Plug 'groenewege/vim-less'
Plug 'rstacruz/sparkup', {'for': 'html'}
Plug 'xolox/vim-session'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'cakebaker/scss-syntax.vim'
Plug 'trusktr/seti.vim'
Plug 'andviro/flake8-vim', {'for': 'python'}
Plug 'xolox/vim-misc'
Plug 'vim-scripts/auto-pairs-gentle'
Plug 'leafgarland/typescript-vim'
Plug 'gcmt/taboo.vim'
Plug 'gorodinskiy/vim-coloresque'
Plug 'jparise/vim-graphql'
Plug 'scrooloose/syntastic'
Plug 'junegunn/fzf' | Plug 'junegunn/fzf.vim'
Plug 'flowtype/vim-flow', {'for': 'javascript'}
Plug 'rizzatti/dash.vim'
Plug 'codegram/vim-codereview'
Plug 'posva/vim-vue'
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin configurations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""
" Configuration Flake
""""""""""""""""""""""""""""""""""""""""""""""
let g:PyFlakeDisabledMessages = 'E501,E111,E121,E126'
let g:PyFlakeMaxLineLength = 200
let g:PyFlakeOnWrite = 0
let g:PyFlakeSigns = 0

""""""""""""""""""""""""""""""""""""""""""""""
" Configuration YouCompleteMe
""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_auto_trigger = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_disable_for_files_larger_than_kb = 460

""""""""""""""""""""""""""""""""""""""""""""""
" Configuration EditorConfig
""""""""""""""""""""""""""""""""""""""""""""""
let g:EditorConfig_preserve_formatoptions = 1

""""""""""""""""""""""""""""""""""""""""""""""
" Configuration airline
""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_section_b = ''

""""""""""""""""""""""""""""""""""""""""""""""
" Configuration session
""""""""""""""""""""""""""""""""""""""""""""""
let g:session_autosave = 'yes'

""""""""""""""""""""""""""""""""""""""""""""""
" Configuration indent guides
""""""""""""""""""""""""""""""""""""""""""""""
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

""""""""""""""""""""""""""""""""""""""""""""""
" Configuration AutoPairs
""""""""""""""""""""""""""""""""""""""""""""""
let g:AutoPairsMapCR = 0
let g:AutoPairsUseInsertedCount = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""
" Taboo config
""""""""""""""""""""""""""""""""""""""""""""""
set sessionoptions+=tabpages,globals

""""""""""""""""""""""""""""""""""""""""""""""
" Enable filetype plugins
""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""
" Remaping keys for numbers plugin
""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <F3> :NumbersToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""
" Remaping nerdtree shortcut
""""""""""""""""""""""""""""""""""""""""""""""
map <F7> :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""
" close vim if the only window left open is a NERDTree
""""""""""""""""""""""""""""""""""""""""""""""
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd FileType,BufNewFile,BufReadPost * set formatoptions-=t

""""""""""""""""""""""""""""""""""""""""""""""
" Ignore some folders or files on NERDTreee
""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeIgnore = ['^node_modules/*', '^\.git/*']

""""""""""""""""""""""""""""""""""""""""""""""
" FZF
""""""""""""""""""""""""""""""""""""""""""""""
let s:fzf_go = '/usr/local/bin/fzf'
let s:fzf_tmux = '/usr/local/bin/fzf-tmux'
map <C-P> :GFiles<CR>

""""""""""""""""""""""""""""""""""""""""""""""
" list buffers
""""""""""""""""""""""""""""""""""""""""""""""
function! s:buflist()
  redir => ls
  silent ls
  redir END
  return split(ls, '\n')
endfunction

function! s:bufopen(e)
  execute 'buffer' matchstr(a:e, '^[ 0-9]*')
endfunction

nnoremap <silent> <Leader><Enter> :call fzf#run({
\   'source':  reverse(<sid>buflist()),
\   'sink':    function('<sid>bufopen'),
\   'options': '+m',
\   'down':    len(<sid>buflist()) + 2
\ })<CR>
nnoremap K :Ag <C-R><C-W><CR>

""""""""""""""""""""""""""""""""""""""""""""""
" Configurations syntastic
""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'
" Configuration for ionic HTML tags
let g:syntastic_html_tidy_ignore_errors=["<ion-", "discarding unexpected </ion-", " proprietary attribute \"ng-"]

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Configurations flow
"""""""""""""""""""""""""""""""""""""""""""""""""""
let g:flow#autoclose = 0
let g:flow#enable = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Configuration to fuse tools
"""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufRead,BufNewFile *.uno setfiletype cs
autocmd BufRead,BufNewFile *.uxl,*.ux setfiletype xml

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Configuration to ect
"""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufRead,BufNewFile *.ect setfiletype html

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Set autoread
"""""""""""""""""""""""""""""""""""""""""""""""""""
set autoread

