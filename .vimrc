set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" All of your Plugins must be added before the following line
" Add maktaba and codefmt to the runtimepath.
" (The latter must be installed before it can be used.)
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
" Also add Glaive, which is used to configure codefmt's maktaba flags.
" See `:help :Glaive` for usage.
Plugin 'google/vim-glaive'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
" ...
call vundle#end()            " required
" the glaive#Install() should go after the "call vundle#end()"
"""""""call glaive#Install()
" Optional: Enable codefmt's default mappings on the <Leader>= prefix.
"""""""Glaive codefmt plugin[mappings]
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate :PluginSearch foo - searches for foo; append `!` to
" refresh local cache :PluginClean      - confirms removal of unused
" plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this lineset expandtab

" Manage tabs, spaces, and general whitespace
set tabstop=4
retab
set shiftwidth=4
set textwidth=80
set wrap
set colorcolumn=+1
set spelllang=en_us
set nojoinspaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

filetype plugin indent on
syntax on

" Use line numbers
set number

" Set column to be cleaner grey color
hi ColorColumn ctermbg=7

" Manage syntax highlighting for Markdown files (.md)
" https://github.com/tpope/vim-markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
let g:markdown_syntax_conceal = 0
let g:markdown_minlines = 100

" Uncomment below if you are using a terminal with a dark background
" set background=dark
