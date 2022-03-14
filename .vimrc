"EDITOR APPEARANCE-------------------------------------{{{
    set number "display line numbers
    syntax on "put file syntax on 
    set t_Co=256 "not clear what this does, but seems important 
    colorscheme molokai "colorscheme
    set cursorline "highlight cursorline underneath the cursor horizontally
    set cursorcolumn "highlight cursor line underneath the cursor vertically

"}}}

"FILE DETECTION----------------------------------------{{{
filetype on "detect file type
filetype plugin on "enable plugins and load plugins for the detected filetype
filetype indent on "load an indent file for the detected file type 
"}}}

"AUTOSAVES---------------------------------------------{{{
set nobackup "no backup saves
"}}}

"SEARCH------------------------------------------------{{{{
set incsearch "highlight in the process of searching
set ignorecase "ignore case during search
set smartcase "override ignorecase for capital letters
set showmatch "show matching words during a search
set hlsearch "use highlighting when doing a search
"}}}

"COMMANDS----------------------------------------------{{{
set showcmd "show partial command you type in the last line of the screen
set history=1000 "Set the number of commands to save in history (default = 20) 
"}}}

"TEXT FORMATTING-------------------------------------{{{
set shiftwidth=4 "shift set to 4 spaces
set tabstop=4 "tab set to 4 spaces
set expandtab "use space characters instead of tabs
set autoindent "auto indent each line after new scope
"}}}

" STATUS LINE ------------------------------------------------------------ {{{
set statusline = " Clear status line when vimrc is reloaded.
set statusline+=\ %F\ %M\ %Y\ %R " Status line left side.
set statusline+=%= " Use a divider to separate the left side from the right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%% " Status line right side.
set laststatus=2 " Show the status on the second to last line.

" " }}}

"WILD MENU-------------------------------------{{{
set wildmenu "Enable auto-completion after pressing TAB
set wildmode=list:longest "Bash-like autocomplete behavior
"}}}

"PLUGINS-------------------------------------------------------------------------{{{
call plug#begin('~/.vim/plugged')
"plugin code goes between the two calls 

Plug 'sainnhe/everforest' "install everforest colorscheme

Plug 'dense-analysis/ale' "install Asynchronous Lint Engine
Plug 'preservim/nerdtree' "install NERDTree



call plug#end()
"}}}

"MAPPINGS-------------------------------------------------------------------------{{{

nmap <F6> :NERDTreeToggle<CR> "Mappings code goes here

"}}}

"VIMSCRIPT (Stays at end) -------------------------------------------------------------- {{{

 "This will enable code folding.
 "Use the marker method of folding.
 augroup filetype_vim
     autocmd!
     autocmd FileType vim setlocal foldmethod=marker
 augroup END
 
 "More Vimscripts code goes here.

"}}}
