if !has('gui_running')
    let g:pathogen_disabled = [ "ultisnips", "vim-powerline" ]
else
    let g:pathogen_disabled = [ "ultisnips", "vim-snippets"]
endif
execute pathogen#infect()

if has('gui_running')
    set background=dark
    colorscheme solarized
    set guifont=YaHei_Consolas_Hybrid:h12
    " highlight current line
    set cursorline
    " highlight current column
    set cursorcolumn
    " change working directory
else
    "colorscheme slate
    set background=dark
    colorscheme slate
endif

filetype plugin indent on
syntax on

set lines=50 columns=164

" show status bar
set laststatus=2
let g:Powerline_colorscheme='solarized256'

" show cursor current position
set ruler

" highlight search result(s)
set hlsearch

" disabled split long line
set nowrap

" terminal 256 color
" set t_Co=256


"set nocompatible
set number!
set backspace=indent,eol,start
set shiftwidth=4
set autoindent!
set tabstop=4
set expandtab!
set colorcolumn=80
" reload file when changing
set autoread

" enable code fold
set foldmethod=syntax
" open all fold on startup
set nofoldenable

" disabled cursor blink
set gcr=a:block-blinkon0
" hide scroll bar
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" hide menu 
set guioptions-=m
" hide toolbar
set guioptions-=T

" NERDTree file browser
" open NERDTree when startup
" autocmd vimenter * NERDTree

" open NERDTree when startup with no file
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Fullscreen when start up
" autocmd GUIEnter * call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)

" NERDTreeToggle Map
map <C-n> :NERDTreeToggle<CR>

" Close NERDTree when no file left
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" NERDTreeToggle Position
let NERDTreeWinPos="left"

" Show hidden files
" let NERDTreeShowHidden=1

" Hide help info
let NERDTreeMinimalUI=1

" Detet buf when delete file
let NERDTreeAutoDeleteBuffer=1

" define hotkey prefix <leader>
let mapleader=";"
nmap <leader>q :q<CR>
nmap <leader>ww <C-W><C-W>
nmap <leader>wh <C-W>h
nmap <leader>wj <C-W>j
nmap <leader>wk <C-W>k
nmap <leader>wl <C-W>l
" Toggle highlighting
nmap <leader>hl :set hlsearch!<CR>
" Turn off highlighting until next search
nmap <leader>nl :noh<CR>
" <F11> Fullscreen Toggle
nmap <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
nmap <leader>tl :Tlist<CR>
nmap <leader>fl :NERDTreeToggle<CR>

function! CdWS()
    if !empty($WS)
        :NERDTree $WS
    endif
endfunction

function! SetTag()
    if filereadable("tags")
        :set tags=tags<CR>
    endif
endfunction
nmap <leader>st :call SetTag()<CR>
nmap <leader>gt :silent !ctags -R<CR>
nmap <leader>ws :call CdWS()<CR>

" plugin UltiSnips
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"

" encoding
set fileencodings=utf-8,gb2312,gb18030,gbk
set encoding=utf-8
set termencoding=utf-8
