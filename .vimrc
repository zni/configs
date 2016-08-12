" Standard tab bullshit
set sw=4
set ts=4
set sts=4
set nowrap
set expandtab

set laststatus=2


" Vundle
filetype off
set nocompatible
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}


filetype plugin indent on

" Make it visually pleasing.
set guifont=Monaco:h12
"set guifont=ProggySquareTT\ 12

set nu
set hlsearch
set noantialias
syntax enable
set background=dark
"color blacksea
"color jellybeans
"color herald
"color desert256
"color satori
"color gentooish
"color twilight
"color vividchalk
"color desert256
"color solarized
"color oceanblack
"color tir_black
"color zmrok
color zendnb

if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8                     " better default than latin1
  setglobal fileencoding=utf-8           " change default file encoding when writing new files
endif

" I'm crazy and don't like window decorations.
set guioptions-=T
set guioptions-=r
set guioptions-=l
set guioptions-=g

" Rando
noremap <F5> :nohlsearch<CR>
noremap <F7> :vs<CR>

" Reload syntax because vim is kind of slow/bad about doing it itself.
noremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>

" Tab (the other tabs) shiet
"nnoremap th  :tabfirst<CR>
"nnoremap tj  :tabnext<CR>
"nnoremap tk  :tabprev<CR>
"nnoremap tl  :tablast<CR>
"nnoremap tt  :tabedit<Space>
"nnoremap tn  :tabnext<Space>
"nnoremap tm  :tabm<Space>
"nnoremap td  :tabclose<CR>
"
" Alternatively use
nnoremap tj :tabnext<CR>
nnoremap tk :tabprev<CR>
nnoremap tn :tabnew<CR>
nnoremap tn :tabnew<CR>
nnoremap tc :tabclose<CR>

let mapleader = ","
let maplocalleader = ","

" NERD Tree
map <leader>n :NERDTreeToggle<CR>
let g:NERDTreeWinSize=80

" Continue inserting comment symbols at the beginning of the line for stream
" of consciousness style writing.
set formatoptions+=r

let python_highlight_all = 1
