syntax on
colorscheme badwolf
set encoding=UTF-8
set background=dark
set number
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set noignorecase
set ttyfast
set lazyredraw
set hlsearch
set incsearch
set ambiwidth=double
set backspace=indent,eol,start
set completeopt=menuone,noinsert
let mapleader = "\<Space>"


" 検索ハイライトを消す
nnoremap <ESC><ESC> :nohl<CR>
nnoremap <C-j><C-j> :nohl<CR>

imap <C-j> <esc>

" 文頭文末移動
inoremap <C-e> <Esc>$a
inoremap <C-a> <Esc>^i
noremap <C-e> <Esc>$a
noremap <C-a> <Esc>^i


"自動補完===
set completeopt=menuone
for k in split("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_",'\zs')
        exec "imap " . k . " " . k . "<C-X><C-P><C-N>"
endfor
imap <expr> <TAB> pumvisible() ? "\<Down>" : "\<Tab>" "===========
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
endfunction

if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme * call ZenkakuSpace()
        autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('ZenkakuSpace', '　')
    augroup END
    call ZenkakuSpace()
endif
"=========

set t_Co=256

" 最後にカーソルがいたところを記憶
augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END
