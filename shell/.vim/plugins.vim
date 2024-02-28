call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'

" Adds file type icons to Vim plugins such as: NERDTree, vim-airline, CtrlP, unite, Denite, lightline, vim-startify and many more
Plug 'ryanoasis/vim-devicons'

" Extra syntax and highlight for nerdtree files
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Fuzzy file, buffer, mru, tag, etc finder.
Plug 'kien/ctrlp.vim'

call plug#end()
