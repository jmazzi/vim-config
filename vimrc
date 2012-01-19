call pathogen#infect()

let mapleader=","

set noignorecase

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Window Jumping
map <C-J> <C-W>j<15C-W>_
map <C-K> <C-W>k<15C-W>
map <C-h> <C-W>h<15C-W>_
map <C-l> <C-W>l<15C-W>

map <Leader>f :Ack<space>
map <Leader>d :NERDTreeToggle<CR>

no J 20j
no K 20k

" Reselect the last visual select
nmap gV `[v`]

" colorscheme Tomorrow-Night
colorscheme default
let g:HammerQuiet = 1

" Chef
map <M-a> :ChefFindAny<CR>

" Stripper
set exrc
set secure

" Command-T
set wildignore=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*,coverage/*,public/*,tmp/*,log/*,doc/*

" Tabular
nmap <Leader>a= :Tabularize /^[^=]*\zs=>\?<CR>
vmap <Leader>a= :Tabularize /^[^=]*\zs=>\?<CR>
nmap <Leader>a: :Tabularize /:\zs/l0r1<CR>
vmap <Leader>a: :Tabularize /:\zs/l0r1<CR>
nmap <Leader>a, :Tabularize /,\zs/l1r0<CR>
vmap <Leader>a, :Tabularize /,\zs/l1r0<CR>

" Folding
" set viewdir=~/.vim/view
" set viewoptions=folds,cursor

" Toggle folds with space
" nnoremap <silent> <Space> @=(foldlevel('.')?'za':'l')<CR>
" vnoremap <Space> zf

" Save folds
" autocmd BufWinLeave * silent! mkview
" autocmd BufWinEnter * silent! loadview
" Open git commits at the first line
autocmd VimEnter .git/COMMIT_EDITMSG exe "normal! gg"

" ,wr to toggle wrap/no wrap
map <leader>wr :set nowrap! nowrap?<CR>

" ,pa to toggle paste mode
map <leader>pa :set paste! paste?<CR>

" ,n to toggle line numbers
map <leader>n :set number! number?<CR>

" ,l to toggle list
map <leader>l :set list! list?<CR>

" Already handled
let g:ctrlp_working_path_mode = 0
" let g:ctrlp_split_window = 1

set splitbelow
set splitright

" set wildmode=list:full

let g:ctrlp_map = '<c-t>'

" STOP FLASHING AT ME
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
