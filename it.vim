" KNOWN SECTION
:set number
:set rnu
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set clipboard=unnamed


" UKNOWN SECTION
:set mouse=a

" PLUGIN KEYBINDS
nnoremap <C-n> :NERDTreeToggle<CR>

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Open the existing NERDTree on each new tab.
" autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif


"""" AIRLINE """""
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" Plugins
call plug#begin()
	Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
	Plug 'vim-airline/vim-airline' 
	Plug 'tpope/vim-commentary'
	Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
	Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
	Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
	Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)

call plug#end()
