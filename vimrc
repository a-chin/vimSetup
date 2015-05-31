" activates filetype detection
filetype plugin indent on

" activates syntax highlighting among other things
syntax on

set cindent
set shiftwidth=4
set tabstop=4
set smarttab
set expandtab
set number


"To copy between vim instances
vmap <silent> ,y y:new<CR>:call setline(1,getregtype())<CR>o<Esc>P:wq! ~/reg.txt<CR>
nmap <silent> ,y :new<CR>:call setline(1,getregtype())<CR>o<Esc>P:wq! ~/reg.txt<CR>
map <silent> ,p :sview ~/reg.txt<CR>"zdddG:q!<CR>:call setreg('"', @", @z)<CR>p 
map <silent> ,P :sview ~/reg.txt<CR>"zdddG:q!<CR>:call setreg('"', @", @z)<CR>P

"Pathogen. Manages vim runtimepath to make installing packages easier. 
execute pathogen#infect()

"Fuzzy Finder Key Mappings
let mapleader = ","
map <leader>/ /\c
map <leader>ff :FufCoverageFile<CR>
map <leader>fb :FufBuffer<CR>

" quit all open buffers
map <leader>q :qa<CR>
" vsplit 
map <leader>v :vsplit<CR>

" Nerdtree and vim window switching
noremap nt :NERDTree<ENTER>
noremap wl <C-w><right>
noremap wh <C-w><left>
noremap ww <C-w><C-w>

" MiniBufExplr
map <leader>k :bp<cr>
map <leader>j :bn<cr>
map <leader>t :MBEFocus<cr>
noremap <leader>e :confirm :b# <CR>
noremap <leader>1 :confirm :b1 <CR>
noremap <leader>2 :confirm :b2 <CR>
noremap <leader>3 :confirm :b3 <CR>
noremap <leader>4 :confirm :b4 <CR>
noremap <leader>5 :confirm :b5 <CR>

"persistent undo >= vi 7.4
set undofile
set undodir=~/.vimundo

" Highlight search results
set hlsearch
