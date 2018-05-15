" pathogen setup
execute pathogen#infect()
syntax on
filetype plugin on

" syntastic setup (see :help syntastic)
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
nmap <F5> :SyntasticCheck<CR>
" end syntastic

" airline setup
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts=0
let g:airline_left_sep='>'
let g:airline_right_sep='<'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffer_idx_mode = 0
" end airline

" airline-themes setup
let g:airline_theme='base16_atelierseaside'
" end airline-themes

" NERDTree
nmap <F6> :NERDTreeToggle<CR>
let g:NERDTreeMapActivateNode='t'
let g:NERDTreeMapOpenInTab='o'
" end NERDTree

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
function TabToggle()
    if &expandtab
        set shiftwidth=8
        set softtabstop=0
        set noexpandtab
    else
        set shiftwidth=4
        set softtabstop=4
        set expandtab
    endif
endfunction
nmap <F9> mz:execute TabToggle()<CR>'z

set list
if has('gui_running')
    set listchars=tab:›·
else
    set listchars=tab:>.
endif

autocmd Filetype typescript setlocal et ts=2 sw=2 sts=2
autocmd Filetype html setlocal et ts=2 sw=2 sts=2
autocmd Filetype css setlocal et ts=2 sw=2 sts=2
autocmd BufNewFile,BufRead *.ejs setlocal et ts=2 sw=2 sts=2 filetype=html

set nowrap

set background=dark
color base
set nu
set guifont=Terminus\ 10

" Window decorations, be gone!
set guioptions-=m "remove menu bar
set guioptions-=T "remove toolbar
set guioptions-=r "remove RH scrollbar
set guioptions-=L "remove LH scrollbar

" tab key bindings
nnoremap <leader>tj  :tabnext<CR>
nnoremap <leader>tk  :tabprev<CR>
nnoremap <leader>tl  :tablast<CR>
nnoremap <leader>tn  :tabnew<CR>
nnoremap <leader>td  :tabclose<CR>
nmap <leader>t :tabs<CR>
nnoremap <leader>tg  :tabnext<Space>
" end tab key bindings

" resize windows
nnoremap <leader>- :vertical resize 50<CR>
nnoremap <leader>= :vertical resize 25<CR>
" end resize windows

" buffer key bindings
nnoremap tj  :bn<CR>
nnoremap tk  :bp<CR>
nnoremap tl  :blast<CR>
nnoremap tn  :bnew<CR>
nnoremap td  :bd<CR>
nnoremap tg  :b<Space>
nmap <leader>l :ls<CR>
" end buffer key bindings

" swap/backup/undo file storage
if exists("&undodir")
    set undodir=~/.vim/.undo//
endif
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//

