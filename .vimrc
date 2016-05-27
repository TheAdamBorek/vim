" Pathogen
execute pathogen#infect()
call plug#begin()
" The way to navigate a file quickly, regardless of language.
 Plug 'Lokaltog/vim-easymotion'
" " Allows you to change the order of arguments with ease.
 Plug 'PeterRincker/vim-argumentative'
" " Automatically match pairs intelligently.
 Plug 'Raimondi/delimitMate'
" " The best completion engine I’ve found.
 Plug 'Valloric/YouCompleteMe'
" " My own, allows you to edit your quickfix list and write the changes to
" their files. Like find and replace, but better.
 Plug 'Olical/vim-enmasse'
" " The way to jump around your code base by rough file names.
 Plug 'ctrlpvim/ctrlp.vim'
" " We work with a lot of it, show it some love.
 Plug 'helino/vim-json'
" " Makes those funny alignment issues trivial.
 Plug 'junegunn/vim-easy-align'
" " Provides pretty good completion in JavaScript, works great with
" YouCompleteMe. Checkout the tern website for more information.
 Plug 'marijnh/tern_for_vim'
" " Git info in the gutter.
 Plug 'mhinz/vim-signify'
" " My favourite JavaScript syntax plugin of them all so far. (has great
" conceal features which I’ll talk about below)
 Plug 'pangloss/vim-javascript'
" " We have to search for a lot of stuff across a lot of files, Ag does it
" best.
 Plug 'rking/ag.vim'
" " Provides automatic JSHint linting. (among many other JavaScript linters,
" check the docs)
 Plug 'scrooloose/syntastic'
 Plug 'ternjs/tern_for_vim'
 Plug 'scrooloose/nerdtree' 
 Plug 'chriskempson/base16-vim'
 Plug 'lervag/vimtex'
 Plug 'tpope/vim-surround'
 Plug 'tpope/vim-repeat'
 Plug 'tomtom/tcomment_vim'
 Plug 'maxbrunsfeld/vim-yankstack'
 call plug#end()

"Surround settings
"Load proper mapping
" call yankstack#setup()

" My settings
set tabstop=4 shiftwidth=4 expandtab
inoremap jk <ESC>
let mapleader = "\<Space>"
filetype plugin indent on
syntax on
set number
set encoding=utf-8
set shell=/bin/zsh
set term=screen-256color
set t_Co=256
set background=dark
let base16colorspace=256
colorscheme base16-ocean
set nofoldenable

""""""""""""
" Tern settings
""""""""""""
let g:tern_show_argument_hints='on_hold'
let g:tern_map_keys=1"
"End of Tern settings
"""""""""""
" NerdTree settings 
"""""""""""
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * wincmd l
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " Close NERDTree if nerdtree is last window open
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" End of NerdTree settings 
"""""""""""
" EasyMotion Settings
""""""""""
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap <Leader>s <Plug>(easymotion-overwin-f2)
let g:EasyMotion_smartcase = 1
" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
"" Eng of EasyMotion
"""""""""""
