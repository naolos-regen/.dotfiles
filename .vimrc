syntax on
filetype plugin indent on

set tabstop=3 softtabstop=3 shiftwidth=3 expandtab autoindent smartindent
set number relativenumber

call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/seoul256.vim'
Plug 'preservim/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

colorscheme seoul256
set background=dark
hi Normal guibg=NONE ctermbg=NONE

let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw
set timeout ttimeoutlen=50

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

inoremap <C-b> <Esc>:NERDTreeToggle<cr>
nnoremap <C-b> <Esc>:NERDTreeToggle<cr>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

nnoremap <A-j> :resize +2<cr>
nnoremap <A-k> :resize -2<cr>
nnoremap <A-h> :vertical resize -2<cr>
nnoremap <A-l> :vertical resize +2<cr>

nnoremap <C-p> :Files<cr>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call CocActionAsync('doHover')<cr>
