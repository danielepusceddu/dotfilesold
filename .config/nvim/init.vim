let mapleader = "\<Space>" 
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'easymotion/vim-easymotion'
Plugin 'kien/ctrlp.vim'
call vundle#end()            " required
filetype plugin indent on    " required

" easymotion
let g:EasyMotion_smartcase = 1
map <Leader> <Plug>(easymotion-prefix)
map s <Plug>(easymotion-s)
map S <Plug>(easymotion-s2)

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='minimalist'

" vim settings
syntax on
set mouse=a
set tabstop=4   "Width of \t is 4
set shiftwidth=4    "Indents will have width of 4
set softtabstop=4
set expandtab   "Expand tabs as spaces
set number relativenumber

" Buffer switching
nmap <tab> :bnext<CR>
nmap <S-tab> :bprev<CR>

" Set white on red color for misspelled words
hi SpellBad ctermbg=9 ctermfg=195

" Splits open at the bottom and right
set splitbelow splitright

