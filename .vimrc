"EDITOR APPEARANCE-------------------------------------
set number "display line numbers
syntax on "put file syntax on 


set cursorline "highlight cursorline underneath the cursor horizontally
set cursorcolumn "highlight cursor line underneath the cursor vertically

set t_Co=256 "not clear what this does, but seems important

"COLORSCHEME BELOW THIS LINE 
if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif

set background=dark "sets the everforest background
let g:everforest_background='hard' "sets the background CONTRAST (soft, medium(default), hard)
let g:everforest_enable_italic = '0' "disables italics in everforest
let g:everforest_disable_italic_comment = '1' "disables italics in comments in everforest
let g:everforest_cursor='aqua'

let g:airline_theme='everforest'

"FILE DETECTION----------------------------------------
filetype on "detect file type
filetype plugin on "enable plugins and load plugins for the detected filetype
filetype indent on "load an indent file for the detected file type 

"AUTOSAVES---------------------------------------------
set nobackup "no backup saves

"SEARCH-----------------------------------------------
set incsearch "highlight in the process of searching
set ignorecase "ignore case during search
set smartcase "override ignorecase for capital letters
set showmatch "show matching words during a search
set hlsearch "use highlighting when doing a search

"COMMANDS----------------------------------------------
set showcmd "show partial command you type in the last line of the screen
set history=1000 "Set the number of commands to save in history (default = 20) 

"TEXT FORMATTING-------------------------------------
set shiftwidth=4 "shift set to 4 spaces
set tabstop=4 "tab set to 4 spaces
set expandtab "use space characters instead of tabs
set autoindent "auto indent each line after new scope

" STATUS LINE ------------------------------------------------------------
set statusline = " Clear status line when vimrc is reloaded.
set statusline+=\ %F\ %M\ %Y\ %R " Status line left side.
set statusline+=%= " Use a divider to separate the left side from the right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%% " Status line right side.
set laststatus=2 " Show the status on the second to last line.

"WILD MENU-------------------------------------
set wildmenu "Enable auto-completion after pressing TAB
set wildmode=list:longest "Bash-like autocomplete behavior

"PLUGINS-------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')

	Plug 'dense-analysis/ale' "install Asynchronous Lint Engine
	Plug 'preservim/nerdtree' "install NERDTree
	Plug 'sainnhe/everforest' "install everforest theme
	Plug 'vim-airline/vim-airline'

call plug#end()


"MAPPINGS-------------------------------------------------------------------------

nmap <F6> :NERDTreeToggle<CR> "Mappings code goes here

