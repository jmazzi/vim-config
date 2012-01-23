" Turn off vi compat
set nocompatible

call pathogen#infect()

syntax on

" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

" Remember more
set history=1000

let mapleader=","

" Make tab completion for files/buffers act like bash
set wildmenu

" Make searches case-sensitive only if they contain upper-case characters
set ignorecase
set smartcase

" GRB: sane editing configuration"
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
" set smartindent
set laststatus=2
set showmatch
set incsearch

" Horizontal splits open below the current buffer
set splitbelow

" Vertical splits open to the right of the current buffer
set splitright

" Store temporary files in a central spot
set backupdir=~/.vim/.backup
set directory=~/.vim/.backup

" STOP FLASHING AT ME
set noerrorbells visualbell t_vb=

" Turn off arrow scrolling
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Window Jumping
map <C-J> <C-W>j<15C-W>_
map <C-K> <C-W>k<15C-W>
map <C-h> <C-W>h<15C-W>_
map <C-l> <C-W>l<15C-W>

" ,s - Open the associated file in a horizontal split (ruby)
map <leader>s :AS<cr>

" ,v - Open the associated file in a vertical split (ruby)
map <leader>v :AV<cr>

" Searching
map <Leader>f :Ack<space>

" Show NERDTree
map <Leader>d :NERDTreeToggle<CR>

" Jump by 20 lines at a time
no J 20j
no K 20k

" Reselect the last visual select
nmap gV `[v`]

" colorscheme Tomorrow-Night
colorscheme default

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

" ,wr to toggle wrap/no wrap
map <leader>wr :set nowrap! nowrap?<CR>

" ,pa to toggle paste mode
map <leader>pa :set paste! paste?<CR>

" ,n to toggle line numbers
map <leader>n :set number! number?<CR>

" ,l to toggle list
map <leader>l :set list! list?<CR>

" Remap space to :
noremap <space> :

" Show tags
map <leader>T :TagbarToggle<cr>

" Focus the window when it's launched
let g:tagbar_autofocus = 1

" Already handled
let g:ctrlp_working_path_mode = 0
let g:ctrlp_map = '<c-t>'


if has("autocmd")
  autocmd GUIEnter * set visualbell t_vb=
  " Save folds
  " autocmd BufWinLeave * silent! mkview
  " autocmd BufWinEnter * silent! loadview
  "
  " Open git commits at the first line
  autocmd VimEnter .git/COMMIT_EDITMSG exe "normal! gg"

  " Add :Rfactory command
  autocmd User Rails Rnavcommand factory spec/factories test/factories -suffix=.rb -default=model()

  " Add :Rconfig command
  autocmd User Rails Rnavcommand config config -glob=*.* -suffix= -default=routes.rb
end


" Snippets
let g:snippets_dir = '~/.vim/bundle/snipmate-snippets/'
source ~/.vim/bundle/snipmate-snippets/support_functions.vim

" Gist clipboard
let g:gist_clip_command = 'xclip -selection clipboard'

" Show my private gists
let g:gist_show_privates = 1

" Open in a browser
let g:gist_open_browser_after_post = 1
let g:gist_browser_command = 'google-chrome %URL% &'
