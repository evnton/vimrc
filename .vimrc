set encoding=utf-8
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles setting:
Bundle 'Align'
Bundle 'scrooloose/nerdtree'
Bundle 'kchmck/vim-coffee-script'
Bundle 'slim-template/vim-slim'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-vividchalk'
Bundle 'Lokaltog/powerline'

" 设置字体
set guifont=Monaco:h12
" 设置备份
set nobackup
set nowritebackup

" 语法高亮
syntax on

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" 关闭响铃，闪屏
set vb t_vb=
" 显示行号
set nu
" 马上跳到搜索匹配
set incsearch
" 高亮搜索匹配后的字符
set hlsearch

" keep 50 lines of command line history
set history=50		
" show the cursor position all the time
set ruler		
" display incomplete commands
set showcmd		
" 设置编辑器颜色（使Theme生效）
set t_Co=256
" 打开鼠标功能
set mouse=a

" 根据文件格式载入插件和缩进
filetype plugin indent on
set autoindent		" always set autoindenting on

" 设置主题
colorscheme vividchalk

" 指标符宽度
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab

" 设置文件类型
autocmd BufRead,BufNewFile *.json set filetype=json
autocmd BufRead,BufNewFile *.slim set filetype=slim

" 高亮当前行
set cursorline
hi CursorLine cterm=NONE ctermbg=235 ctermfg=NONE
hi MatchParen ctermbg=darkred ctermfg=white

" 设置NERDTree
let NERDTreeWinSize=40

" 设置快捷键
nmap <C-N> :exe 'NERDTreeToggle'<CR>
map zz :set paste<CR>
map zx :set nopaste<CR>
nmap ls :ls<CR>
nmap nn :bn<CR>
nmap mm :bp<CR>
nmap gb :e#<CR>
imap jj <ESC>

let c = 1
while c <= 99
  execute "nnoremap " . c . "gb :" . c . "b\<CR>"
  let c += 1
endwhile
let d = 1
while d <= 99
  execute "nnoremap " . d . "db :" . d . "bd\<CR>"
  let d += 1
endwhile

set laststatus=2
set rtp+=$HOME/.vim/bundle/powerline/powerline/bindings/vim
