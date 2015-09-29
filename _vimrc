
set nocompatible
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

syntax on
filetype plugin indent on
set background=light
colorscheme solarized


set list
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

set backspace=2
set autochdir
set tabstop=4
set shiftwidth=4
set softtabstop=4
set number

"General short-cuts
nmap <F6> :NERDTreeToggle<CR>
nmap <F7> :call Flip_Ext()<CR>
nmap <F8> :TagbarToggle<CR>
noremap <F11> :set list!<CR>

nnoremap ; :

set wildmode=longest,list,full
set wildmenu
set hidden
if has("gui_running")
	set guifont=Consolas:h11:cANSI
endif

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


