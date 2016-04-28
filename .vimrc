 " Note: Skip initialization for vim-tiny or vim-small.
 if 0 | en
 if &compatible
   set nocompatible               " Be iMproved
 endif

 " Required:
 set runtimepath^=~/.vim/bundle/neobundle.vim/ " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))


 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!  NeoBundle 'scrooloose/syntastic'
 NeoBundle 'kien/ctrlp.vim'
 NeoBundle 'tpope/vim-surround'
 NeoBundle 'tpope/vim-fugitive'
 NeoBundle 'pangloss/vim-javascript'
 NeoBundle 'mxw/vim-jsx'
 NeoBundle 'cakebaker/scss-syntax.vim'
 NeoBundle 'digitaltoad/vim-jade'
 NeoBundle 'scrooloose/syntastic'
 NeoBundle 'airblade/vim-gitgutter'
 NeoBundle 'Yggdroot/indentLine'
 NeoBundle 'msanders/snipmate.vim'

 set nocompatible
 filetype on
 filetype plugin on

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck


" my options
colorscheme dracula
syntax enable
set nowrap
set number
set relativenumber
set background=dark
set laststatus=2
set fillchars+=vert:\ 
set t_Co=256
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set undofile
set undodir=~/.vim/undodir
set undolevels=1000
set undoreload=10000
set lazyredraw
set showmatch
set incsearch
set hlsearch
set history=1000

" Maps
let mapleader = ","
let maplocalleader = "\\"
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>d dd
nnoremap <leader>. q:k<CR>


let g:ctrlp_custom_ignore = '\v[\/](node_modules)$'
let g:indentLine_enabled = 1
let g:indentLine_leadingSpaceEnabled=1
let g:jsx_ext_required = 0
let g:javascript_enable_domhtmlcss = 1
let g:pymode_python = 'python3'

" Syntastic
"let g:syntastic_debug = 3
let g:syntastic_scss_checkers=['']
let g:syntastic_javascript_checkers = ["eslint"]
let g:syntastic_loc_list_height = 2  
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" Statusline
set statusline=%.80F      " Path to the file

set statusline+=%=        " Switch to the right side

set statusline+=t:\    " File type label
set statusline+=%Y
set statusline+=\ \ \ 
set statusline+=b:\     " Buffer lable
set statusline+=%n        " Buffer number
set statusline+=\ \ \ 
set statusline+=%l        " Current line
set statusline+=/         " Separator
set statusline+=%L        " Total lines

"match lines longer than 80chars
match ErrorMsg '\%>80v.\+'

augroup active_relative_number
  au!
  au BufEnter * :setlocal number relativenumber
  au WinEnter * :setlocal number relativenumber
  au BufLeave * :setlocal number norelativenumber
  au WinLeave * :setlocal number norelativenumber
augroup END
