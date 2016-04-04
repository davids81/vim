
set nocompatible

" ... old Pathogen stuff
" runtime bundle/vim-pathogen/autoload/pathogen.vim
" execute pathogen#infect()

" ... Vundle initialization
filetype off
set runtimepath+=%HOME%/vimfiles/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'

call vundle#end()

syntax on
filetype plugin indent on
colorscheme solarized

set cursorline
set cursorcolumn

set background=dark
set list
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set backspace=2
set autochdir
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set number
set laststatus=2
let g:airline_powerline_fonts=1

set encoding=utf-8

"General short-cuts
nmap <F6> :NERDTreeToggle<CR>
nmap <F7> :call Flip_Ext()<CR>
nmap <F8> :TagbarToggle<CR>
noremap <F11> :set list!<CR>

nnoremap ; :

set wildmode=longest,list,full
set wildmenu
set hidden

set list!
if has("gui_running")
	set guifont=Anonymice_Powerline:h11:cANSI
endif

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = ''
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'


let g:tagbar_autoclose = 1
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1

function! LoadOrOpen(filename)
	let s:bufname = bufname(a:filename)
	if (strlen(s:bufname)) > 0
		exe ":buffer " s:bufname
	else
		exe ":find " a:filename
	endif
endfun

function! Flip_Ext()
	" Switch editing between .c* and .h* files (and more).
	" Since .h file can be in a different dir, call find
	if match(expand("%"), '\.c') > 0
		let s:flipname = substitute (expand("%"), '\.c\(.*\)', '.h', "")
		call LoadOrOpen(s:flipname)
	elseif match(expand("%"), "\\.h") > 0
		let s:flipname = substitute(expand("%"), '\.h\(.*\)', '.cpp', "")
		call LoadOrOpen(s:flipname)
	endif
endfun


