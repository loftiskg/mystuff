set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'valloric/youcompleteme'
"Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'alvan/vim-closetag'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-surround'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'hiel92/vim-autoformat'
Plugin 'raimondi/delimitmate'

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"split navigations
nnoremap <C-J> <C-W><C-J> " move to split below
nnoremap <C-K> <C-W><C-K> " move to split above
nnoremap <C-L> <C-W><C-L> " move to split right
nnoremap <C-H> <C-W><C-H> " move to split left

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
let g:SimpylFold_docstring_preview=1

" apply proper PEP 8 indentation
au BufNewFile,BufRead *.py
			\ set tabstop=4     |
			\ set softtabstop=4 |
			\ set shiftwidth=4  |
			\ set textwidth=79  |
			\ set expandtab     |
			\ set autoindent    |
			\ set fileformat=unix

" apply proper code formatting list filetypes
au BufNewFile,BufRead *.js, *.html, *.css
			\ set tabstop=2     |
			\ set softtabstop=2 |
			\ set shiftwidth=2
" Flagging unnecessary whitespace
highlight BadWhitespace ctermfg=16 ctermbg=253 guifg=#000000 guibg=#F8F8F0
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" UTF-8 Support
set encoding=utf-8

"ensures auto-complete window goes away when done
let g:ycm_autoclose_preview_window_after_completion=1

"defines shortcut for goto definition
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"Make Code Pretty
let python_highlight_all=1
syntax on

"Set color scheme
colorscheme darkblue
call togglebg#map("<F5>")
"set line numbers
set nu

"Toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

"Remap change pane command
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
