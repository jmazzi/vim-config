colorscheme solarized
" colorscheme Tomorrow-Night
" colorscheme new-autumn
" set gfn=Menlo:h10

if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  map <D-t> :CtrlP<CR>
  set gfn=set guifont=Monospace\ 8
else
  set gfn=set guifont=EspressoMono\ 8
  " set gfn=set guifont=Monospace\ 8
  " set gfn=set guifont=Bitstream\ Vera\ Sans\ Mono\ 9
end

set lines=248 columns=248
set colorcolumn=80

" Hide toolbar and scrollbars
set guioptions-=T
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
set guioptions-=m

set background=dark
