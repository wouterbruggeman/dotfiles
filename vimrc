set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Lightline plugin settings "
Plugin 'itchyny/lightline.vim'
set laststatus=2
let g:lightline = {}
let g:lightline.separator    =  {'left': "\ue0b0", 'right': "\ue0b2"}
let g:lightline.subseparator =  {'left': "\ue0b1", 'right': "\ue0b3"}

" Non plugin settings"
set history=100
set autoread

" Search settings "
set ignorecase
set smartcase
set hlsearch
set incsearch

" no error sounds "
set noerrorbells
set visualbell
set t_vb=
set tm=500

" Code settings "
syntax enable
set ai
set wrap
set lbr
set tw=160
set shiftwidth=8
set number 
set mouse=a

" highlight Normal ctermfg=grey ctermbg=black
colorscheme gummybears

" Keybindings & Buffer settings "
nnoremap <F2> :buffers<CR>:buffer<Space>
nnoremap <F3> :b#<Enter>
nnoremap <F4> :Explore<Enter>

autocmd FileType c,cpp,ino,java,py,php,sh,tex autocmd BufWritePre <buffer> %s/\s\+$//e

" End plugin stuff "
call vundle#end()
filetype plugin indent on
