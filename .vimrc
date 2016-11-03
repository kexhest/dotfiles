syntax enable

colorscheme dim

set backspace=indent,eol,start "Make backspace like every other editor.
let mapleader = ',' "The default leader is \, but a comma is much better.
set number "Let's activate line numbers.

"Highlight search
set hlsearch
set incsearch

"Edit the .vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

"Automatically source the .vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
