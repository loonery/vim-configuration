"EDITOR APPEARANCE----------------------------------------------------------------
set number 			"display line numbers
set cursorline 		"highlight cursorline underneath the cursor horizontally
set cursorcolumn 	"highlight cursor line underneath the cursor vertically

"TEXT FORMATTING------------------------------------------------------------------
syntax on 			"put file syntax on 
set expandtab 		"use space characters instead of tabs
set autoindent 		"auto indent each line after new scope
set encoding=		"utf-8"
set shiftwidth=4 	"shift set to 4 spaces
set tabstop=4 		"tab set to 4 spaces

"COLORSCHEME----------------------------------------------------------------------
" This is needed to have everforest colors reflected in tmux
if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif

" everforest look and feel config
set background=dark 							"sets the everforest background
let g:everforest_background='hard' 				"sets the background CONTRAST (soft, medium(default), hard)
let g:everforest_enable_italic = '0' 			"disables italics in everforest
let g:everforest_disable_italic_comment = '1' 	"disables italics in comments in everforest
let g:everforest_cursor='aqua'

"FILE DETECTION-------------------------------------------------------------------
filetype on 		"detect file type
filetype plugin on 	"enable plugins and load plugins for the detected filetype
filetype indent on 	"load an indent file for the detected file type 

"AUTOSAVES------------------------------------------------------------------------
set nobackup 		"no backup saves

"SEARCH---------------------------------------------------------------------------
set incsearch 		"highlight in the process of searching
set ignorecase 		"ignore case during search
set smartcase 		"override ignorecase for capital letters
set showmatch 		"show matching words during a search
set hlsearch 		"use highlighting when doing a search

"COMMANDS-------------------------------------------------------------------------
set showcmd "show partial command you type in the last line of the screen
set history=1000 "Set the number of commands to save in history (default = 20) 

" STATUS LINE --------------------------------------------------------------------
set statusline = 																" Clear status line when vimrc is reloaded.
set statusline+=\ %F\ %M\ %Y\ %R 												" Status line left side.
set statusline+=%= 																" Use a divider to separate the left side from the right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%% 	" Status line right side.
set laststatus=2 																" Show the status on the second to last line.

"WILD MENU------------------------------------------------------------------------
set wildmenu 				"Enable auto-completion after pressing TAB
set wildmode=list:longest 	"Bash-like autocomplete behavior

"OTHER BEHAVIOR-------------------------------------------------------------------
set mouse=a

"Sets a short timeout for chaining keyboard shortcuts. 
"This allows for fast actuation of the ESC key for switching back to normal mode"
set timeoutlen=1000
set ttimeout=5

"PLUGINS--------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')

	Plug 'dense-analysis/ale' 			"install Asynchronous Lint Engine
	Plug 'preservim/nerdtree' 			"install NERDTree
	Plug 'sainnhe/everforest' 			"install everforest theme

call plug#end()
silent! colorscheme everforest			"must go after plugin installs. Sets everforest colorscheme via plug-in"

"MAPPINGS-------------------------------------------------------------------------
nmap <F6> :NERDTreeToggle<CR>
