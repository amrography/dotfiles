"-------- General -------"

syntax enable

"256 colours, please
set t_Co=256

"line numbers"
set number


"-------- Search -------"
"highlist search"
set hlsearch
set incsearch


"-------- Tabs & indentation -------"

filetype plugin indent on
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
" Round indent to nearest multiple of 4
set shiftround
" No line-wrapping
set nowrap


"-------- Interactions -------"

" Start scrolling slightly before the cursor reaches an edge
set scrolloff=3
set sidescrolloff=5
" Scroll sideways a character at a time, rather than a screen at a time
set sidescroll=1
" Backspace behaviour
set nocompatible
set backspace=2


"-------- Visual decorations -------"

" Show status line
set laststatus=2
" Show what mode you’re currently in
set showmode
" Show what commands you’re typing
set showcmd
" Allow modelines
set modeline
" Show current line and column position in file
set ruler
" Show file title in terminal tab
set title


"-------- Auto commands -------"
"automatically source the Vimrc file on save.
augroup autosourcing
   autocmd!
   autocmd BufWritePost .vimrc source %
augroup END


"-------- Mappings-------"
"make it easy to edit the vimrc file"
nmap ,ev :tabedit $MYVIMRC<cr>
nmap ,<space> :nohlsearch<cr>

"-- PLUGINS ---------------------------------- --"
source ~/.vim/plugins.vim

let g:airline_powerline_fonts = 1
let g:NERDTreeDirArrowExpandable = '▶️'
let g:NERDTreeDirArrowCollapsible = '🔻'

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif

@REM colorscheme onedark
syntax on
set number
highlight Normal ctermbg=None
highlight LineNr
set guifont=Menlo\ for\ Powerline

"----"
" Function to open the file or NERDTree or netrw.
"   Returns: 1 if either file explorer was opened; otherwise, 0.
function! s:OpenFileOrExplorer(...)
    if a:0 == 0 || a:1 == ''
        NERDTree
    elseif filereadable(a:1)
        execute 'edit '.a:1
        return 0
    elseif a:1 =~? '^\(scp\|ftp\)://' " Add other protocols as needed.
        execute 'Vexplore '.a:1
    elseif isdirectory(a:1)
        execute 'NERDTree '.a:1
    endif
    return 1
endfunction

" Auto commands to handle OS commandline arguments
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc()==1 && !exists('s:std_in') | if <SID>OpenFileOrExplorer(argv()[0]) | wincmd p | enew | wincmd p | endif | endif

" Command to call the OpenFileOrExplorer function.
command! -n=? -complete=file -bar Edit :call <SID>OpenFileOrExplorer('<args>')

" Command-mode abbreviation to replace the :edit Vim command.
cnoreabbrev e Edit
