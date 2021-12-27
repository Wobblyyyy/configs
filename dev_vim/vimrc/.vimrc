syntax on

" of course... who doesn't love vim settings?
" turn on line numbers
set number

" tabs should be four spaces
" automatically expand tabs into four spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" automatically indent
set ai

" show colored columns at 80 and 120 - this is good for making sure lines
" stay under 80 characters
set colorcolumn=80,120

" to be honest, i forget what ruler and magic do, but i'm too scared to
" turn them off...
set ruler
set magic

" don't alert the user on errors or visual stuff - those sounds are honestly
" so annoying...
set noerrorbells
set novisualbell

" no idea...
set t_vb=
set tm=500

" use utf8 and unix encoding
set encoding=utf8
set ffs=unix,dos,mac

" once again... i forget...
set laststatus=2

" modify the status line so it looks sick
" i can't lie this looks very swaggy and i would certainly encourage you to
" use this incredibly sick status line
set statusline=byte:%o/%O\ 
set statusline+=col:%c%V\ 
set statusline+=ascii:%b/%B\ 
set statusline+=pos:%o\ 
set statusline+=lin:%l\,%L\ %P\ %=\ 
set statusline+=%<%F%h%m%r%h%w%y\ 

" disable support for vi so we can use plugins
set nocompatible

" set up Vundle
set rtp+=~/.vim/bundle/Vundle.vim

" add support for vlang
au BufRead,BufNewFile *.v set filetype=v

" set the color scheme
color molokai

" everything related to plugins
call vundle#begin()
Plugin 'scrooloose/nerdtree'
Plugin 'luochen1990/rainbow'
call vundle#end()
filetype plugin indent on

" misc. NERDTree things - automatically close vim if NERDTree is the last
" editor open, change the chars used in displaying the layout
autocmd StdinReadPre * let s:std_in=1
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '<'

" most important bind by far - jk in insert mode will enter normal mode...
" i can't even explain how useful this is
inoremap jk <esc>

" capital J will scroll down 1 screen
" capital K will scroll up 1 screen
"
" capital B will jump backwards to the next (a) uppercase letter or (b)
" punctuation marking. capital W does the same, but forwards.
noremap <S-J> <C-D>
noremap <S-K> <C-U>
noremap <S-B> ?[\t\r\nA-Z "'\[\]\(\)\{\}.,;]<cr>
noremap <S-W> /[\t\r\nA-Z "'\[\]\(\)\{\}.,;]<cr>

" for vsvim - visual studio usually maps C-V to paste, so using C-A to
" enter visual block mode it is
noremap <C-A> <C-V>

" typing W will save the file using sudo
command! W execute 'w !sudo tee % > /dev/null' <bar>edit!

" for finding trailing whitespace
" ctrl-b automatically selects the entire file and removes any trailing
" whitespace (pretty neat, can't lie...)
noremap <C-B> gg=G<C-o><C-o>:%s/\S\zs\s\+$//g<cr>
noremap <silent> <Space> :nohlsearch<Bar>:echo<cr>

" the next bunch of binds are related to selecting the contents of a pair
" of delimiters - double quotes, brackets, curly brackets, or any form of
" punctuation.
"
" o : double quotes
" p : brackets ( and )
" c : braces { and }
" n : any punctuation (regex [ .,\"\(\{])
"
" binds that start with 'n'
" - select everything in between the previous delimiter and the next
"   delimiter.
" binds that start with 'nw'
" - jump to the next open delimiter, select, and then jump to the next
"   end delimiter.
" binds that start with 'nb'
" - jump to the previous close delimiter, select, and then jump to the
"   next previous open delimiter.

noremap no ?[\"]<cr>lv/[\"]<cr>h
noremap np ?[\(]<cr>lv/[\)]<cr>h
noremap nc ?[\{]<cr>v/[\}]<cr>
noremap nn ?[ .,\"\(\{]<cr>lv/[ .,\"\(\{]<cr>h

noremap nwo /[\"]<cr>lv/[\"]<cr>h
noremap nwp /[\(]<cr>lv/[\)]<cr>h
noremap nwc /[\{]<cr>v/[\}]<cr>
noremap nwn /[ .,\"\(\{]<cr>lv/[ .,\"\(\{]<cr>h

noremap nbo ?[\"]<cr>lv?[\"]<cr>h
noremap nbp ?[\)]<cr>lv?[\(]<cr>h
noremap nbc ?[\}]<cr>v?[\{]<cr>
noremap nbn ?[ .,\"\(\{]<cr>lv?[ .,\"\(\{]<cr>h

" make it so < and > (indentation commands) automatically select the last
" visual selection so you can change multiple levels of indentation at
" the same time
noremap > >gv
noremap < <gv

" open/close/focus NERDtree
nnoremap <C-M> :NERDTreeFocus<cr>
nnoremap <C-N> :NERDTreeToggle<cr>
