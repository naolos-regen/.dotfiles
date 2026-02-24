syntax on
filetype plugin indent on

set tabstop=8 softtabstop=8 shiftwidth=8 nu rnu
set nolist undofile confirm
set wildmenu hlsearch incsearch title
set clipboard=unnamedplus
set mouse=a
set scrolloff=777

" Pathogen installation
execute pathogen#infect()
execute pathogen#helptags()

"!git clone https://github.com/neoclide/coc.nvim.git ~/.vim/bundle/coc.nvim --branch release
"!git clone https://github.com/junegunn/seoul256.vim.git ~/.vim/bundle/seoul256.vim
"!git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree
"!git clone https://github.com/junegunn/fzf.git ~/.vim/bundle/fzf
"!git clone https://github.com/junegunn/fzf.vim.git ~/.vim/bundle/fzf.vim
"!git clone https://github.com/dense-analysis/ale.git ~/.vim/bundle/ale
"!git clone https://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter
"!git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive
"!git clone https://github.com/vlime/vlime.git ~/.vim/bundle/vlime

colorscheme seoul256
set background=dark

hi Normal guibg=NONE ctermbg=NONE
highlight Comment guifg=#d1b897
highlight Keyword guifg=#d1b897
highlight Function guifg=#d1b897
highlight String guifg=#d1b897
highlight Error guifg=#d1b897
highlight Warning guifg=#d1b897
highlight LineNr guifg=#d1b897
highlight CursorLineNr guifg=#d1b897
highlight Visual guifg=NONE guibg=#0000ff
highlight Cursor guibg=#ffffff
highlight Identifier guifg=#d1b897 ctermfg=LightGrey

" ccls configuration for CMake projects
let g:coc_config_home = expand('~/.config/nvim')

" ALE configuration for linting
let g:ale_linters = {
\ 'c': ['gcc', 'clang'],      
\ 'cpp': ['gcc', 'clang'],    
\ 'cmake': ['cmake'],         
\}

let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_on_insert_leave = 1
let g:ale_show_signs = 1

" Git mappings for easy access to Git commands
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gl :Gpull<CR>

" Key mappings for navigating and other actions
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

" ccls key mappings
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gn <Plug>(coc-rename)
nnoremap <silent> K :call CocActionAsync('doHover')<cr>
inoremap <silent><expr> <C-n> coc#pum#visible() ? coc#pum#next(1) : "\<C-n>"
inoremap <silent><expr> <C-p> coc#pum#visible() ? coc#pum#next(0) : "\<C-p>"

" Miscellaneous settings
" let g:coc_popup_auto_trigger = 0
let g:coc_snippet_next = '<C-j>'
let g:coc_snippet_prev = '<C-k>'
let g:coc_dlang_serve_d_path = "/usr/sbin/serve-d"

let g:vlime_leader = '\'
let g:vlime_start_server = 1
let g:vlime_repl_command = 'ecl'
let g:vlime_compiler_policy = {"DEBUG": 3}

autocmd BufRead,BufNewFile *.lisp set filetype=lisp


