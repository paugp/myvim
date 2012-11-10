runtime bundle/vim-pathogen/autoload/pathogen.vim " load pathogen from custom location
call pathogen#runtime_append_all_bundles() " pathogen start
call pathogen#helptags() " the pathogen call search the vim plugins on bundles
set mouse=a
"Color scheme
syntax on
colorscheme molokai
let g:molokai_original = 0
"Indent options
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set autoindent
set smartindent
"Search
set hlsearch
set incsearch
set ignorecase

set autochdir "Switch current directory
set number "Number line
set spell spelllang=en
filetype plugin on
filetype indent on

map <silent> <leader><cr> :nohls<CR>
map <silent> ,n :nohls<CR>

set encoding=utf8
set ruler " show line position
set list " show hidden chars
" hidden chars representation
if has('unix')
  set listchars=tab:^T,eol:¬
else
  set listchars=tab:^T,eol:$
endif
set backup " backup files
set backupdir=/tmp,. " backup files
set directory=/tmp,. " swap files
"Save file position
"autocomplete code
"print tabs
"show white spaces on EOL
set showmatch
set cursorline
set cursorcolumn
"hi CursorColumn ctermbg=5

"Status text
set laststatus=2
"set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]%{fugitive#statusline()}
set statusline=
" Status
set statusline+=%5*\ %-3m\ 
" File name
set statusline+=%1*%F\ 
" File format
set statusline+=%2*\ %{&ff=='unix'?'\\n':(&ff=='mac'?'\\r':'\\r\\n')}\ 
" Encoding
set statusline+=%3*\ [%{&fenc!=''?&fenc:&enc}]\ 
" File type
set statusline+=%1*\ [%Y]\ 
" Lines / Cols
set statusline+=%4*\ [%04l/%03c]\ 
" Byte
set statusline+=%2*\ 0x%04.4B\ 
" Time
set statusline+=%1*\ %-16{strftime(\"%Y-%m-%d\ %H:%M\")}\ 
" Status
" Git
set statusline+=%5*\ %{fugitive#statusline()}\ 


hi User1 guifg=#112605  guibg=SkyBlue gui=italic
hi User2 guifg=#391100  guibg=#d3905c gui=italic
hi User3 guifg=#292b00  guibg=#f4f597 gui=italic
hi User4 guifg=#051d00  guibg=#7dcc7d gui=italic
hi User5 guifg=#002600  guibg=SandyBrown gui=italic

set omnifunc=on " autocomplete function
set completeopt=menu,preview " autocomplete function
set wildmenu " command-line completion
set scrolloff=3 " lines before EOF

set backup " backup files
set backupdir=/tmp,. " backup files
set directory=/tmp,. " swap files

autocmd BufWinLeave * silent! mkview
autocmd BufWinEnter * silent! loadview
highlight ExtraWhitespace ctermbg=215 guibg=SandyBrown
autocmd BufWinEnter * match ExtraWhitespace /^\t*\zs \+\|[ ]\{1,}$/

"para evitar errores xD
cmap W w
cmap WQ wq
cmap Wq wq
cmap wQ wq
cmap Q q

"Guardado rapido
let mapleader = ","
let g:mapleader = ","
nmap <leader>w :w!<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" " Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=
" " Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>
