" =================
" PLUGINS
" =================

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
	silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" === EXTENSIONS ===
Plug 'junegunn/fzf.vim'
Plug 'machakann/vim-highlightedyank' " highlights whatever you just yanked
Plug 'tpope/vim-commentary'          " commenting
Plug 'jiangmiao/auto-pairs'          " Auto-insert paired symbols
Plug 'tpope/vim-endwise'             " Auto-closing language-specific constructs
Plug 'alvan/vim-closetag'            " Auto-close for HTML tags
Plug 'preservim/nerdtree'
Plug 'Valloric/YouCompleteMe'	     "Autocomplete

" === VISUAL ===
Plug 'sainnhe/everforest' " colorscheme
Plug 'itchyny/lightline.vim'

" === Git ===
Plug 'tpope/vim-fugitive'     " Git utils (I mostly only use annotate)

" === MISC ===

call plug#end()

" =================
" SETTINGS
" =================

augroup myfiletypes
	" Clear old autocmds in group
	autocmd!
	" autoindent with two spaces, always expand tabs
	autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
	autocmd FileType python set ai sw=4 ts=4 sts=4 et
augroup END

set nocompatible
"------------------------
set history=256 	" Number of things to remember in history.
set autowrite 		" Writes on make/shell commands
set ruler 		" Ruler on
set nu 			" Line numbers on
set nowrap 		" Line wrapping off
set timeoutlen=1000  	" Time to wait after ESC (default causes an annoying delay)

" Visual
set showmatch  		" Show matching brackets.
set mat=5  		" Bracket blinking.
set title		" show file in titlebar
set matchpairs+=<:>	" specially for html

" editor settings
set ignorecase		" case insensitive searching
set smartcase		" becomes case sensitive if uppercase used

set lcs=tab:\ \ ,eol:$,trail:~,extends:>,precedes:<
set novisualbell  	" No blinking .
set noerrorbells  	" No noise.
set laststatus=2  	" Always show status line.

set backupdir=~/.vim_backups,.
set directory=~/.vim_backups,.

set showcmd	"show command in bottom bar
set cursorline	"highlight current line
set wildmenu	"visual autocomplete for command line

set splitbelow
set splitright
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Important!!
if has('termguicolors')
	set termguicolors
endif

" For dark version.
set background=dark

" Set contrast.
" This configuration option should be placed before `colorscheme everforest`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:everforest_background = 'medium'
let g:lightline = {'colorscheme' : 'everforest'}

colorscheme everforest
