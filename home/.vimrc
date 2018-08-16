syntax enable

colorscheme dim

set backspace=indent,eol,start "Make backspace work like every other editor.
set number "Activate line numbers.

"Highlight search
set hlsearch
set incsearch

"Edit the .vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>
