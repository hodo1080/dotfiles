set nocompatible
filetype on

if has('vim_starting')
	  set runtimepath+=~/.vim/bundle/neobundle.vim/
	endif
call neobundle#rc(expand('~/.vim/bundle/'))
filetype plugin indent on     " Required!
	" Installation check.
if neobundle#exists_not_installed_bundles()
	echomsg 'Not installed bundles : ' .
		\ string(neobundle#get_not_installed_bundle_names())
	echomsg 'Please execute ":NeoBundleInstall" command.'
	" finish
endif

NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'Shougo/unite.vim'

autocmd FileType python set omnifunc=pythoncomplete#Complete

set autoindent
set tabstop=2
set number
set shiftwidth=2
"set smarttab
set ignorecase
set smartcase

"syntax enable
if has('gui_running')
	set background=light
else
	set background=dark
endif
"colorscheme solarized


