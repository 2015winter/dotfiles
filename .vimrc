set number
set mouse=ar

let mapleader=","
let g:mapleader=","
set relativenumber
set ruler
set nu
set cmdheight=2
set hid
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch
set mat=2
syntax enable
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set ai
set si
set wrap
set laststatus=2
map 0 ^

set nocompatible              " be iMproved, required
filetype off                  " required

"set cursorline
"hi CursorLine cterm=NONE ctermbg=darkgrey ctermfg=grey guibg=darkgrey guifg=grey
"set cursorcolumn
"hi CursorColumn cterm=NONE ctermbg=darkgrey ctermfg=grey guibg=darkgrey guifg=grey

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
"set rtp+=~/.vim/bundle/a.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'raimondi/delimitmate'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'magic-dot-files/TagHighlight'
Plugin 'tpope/vim-commentary'
Plugin 'vim-scripts/a.vim'
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/bufexplorer.zip'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/youcompleteme/ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_error_symbol='>>'
let g:ycm_warning_symbol='>*'
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap <F4> :YcmDiags<CR>
let g:airline#extensions#tabline#enable = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts = 1
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>e.vim'
nnoremap <silent> <F10> :NERDTreeToggle<CR>
"autocmd VimEnter * NERDTree

nmap <F8> :TagbarToggle<CR>
