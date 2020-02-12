execute pathogen#infect()
syntax on
filetype plugin indent on

set t_Co=256
set number
set autowrite
set shiftwidth=2
set softtabstop=2
" set expandtab

set noendofline
" set nofixendofline

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" Light line
set laststatus=2
let g:lightline = {'colorscheme': 'wombat'}

" Indent line
let g:indentLine_color_term = 239

" Jedi
autocmd FileType python setlocal completeopt-=preview
