let mapleader = "\<Space>" 
set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin(stdpath('data') . '/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'gruvbox-community/gruvbox'
Plug 'sheerun/vim-polyglot'
call plug#end()            " required
filetype plugin indent on    " required

" gruvbox
set termguicolors
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

" Coc
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

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
set hidden
nmap <tab> :bnext<CR>
nmap <S-tab> :bprev<CR>

" Set white on red color for misspelled words
hi SpellBad ctermbg=9 ctermfg=195

" Splits open at the bottom and right
set splitbelow splitright

