syntax on

set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set ai
set colorcolumn=80,120
set ruler
set magic
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set encoding=utf8
set ffs=unix,dos,mac
set laststatus=2
"" set statusline=%<%F%h%m%r%h%w%y\ %{&ff}\ %{strftime(\"%d/%m/%Y-%H:%M\")}%=\ 
set statusline=byte:%o/%O\ 
set statusline+=col:%c%V\ 
set statusline+=ascii:%b/%B\ 
set statusline+=pos:%o\ 
set statusline+=lin:%l\,%L\ %P\ %=\ 
set statusline+=%<%F%h%m%r%h%w%y\ 
"" set statusline+=%#warningmsg#\ 
"" set statusline+=%{SyntasticStatuslineFlag()}\ 
"" set statusline+=%*\ 
set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim

au BufRead,BufNewFile *.v set filetype=v
color molokai

"" let g:syntastic_always_populate_loc_list = 1
"" let g:syntastic_auto_loc_list = 1
"" let g:syntastic_check_on_open = 1
"" let g:syntastic_check_on_wq = 0

call vundle#begin()
Plugin 'scrooloose/nerdtree'
"" Plugin 'scrooloose/syntastic'
Plugin 'luochen1990/rainbow'
"" Plugin 'ycm-core/youcompleteme'
call vundle#end()
filetype plugin indent on

autocmd StdinReadPre * let s:std_in=1
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '<'

inoremap jk <esc>
inoremap <C-W> <Esc>mv?[\r\nA-Z "'\[\]\(\)\{\}\>\<]<cr>v`vd
inoremap jjb <esc>v?[\>\<A-Z0-9 .,;\(\)\[\]\{\}]<cr>s
inoremap jjw <esc>v/[\>\<A-Z0-9 .,;\(\)\[\]\{\}]<cr>s

noremap <S-J> <C-D>
noremap <S-K> <C-U>
noremap <S-B> ?[\t\r\nA-Z "'\[\]\(\)\{\}.,;]<cr>
noremap <S-W> /[\t\r\nA-Z "'\[\]\(\)\{\}.,;]<cr>

noremap <C-A> <C-V>

noremap <C-W> ?[\t\r\nA-Z "'\[\]\(\)\{\}.,;]<cr>lv/[\t\r\nA-Z "'\[\]\(\)\{\}.,;]<cr>h
vmap <C-W> <esc>`<mb<S-W>/[a-z]<cr><C-W>`>ma`bv`a
nmap <C-R> <C-W>s
nmap <C-I> <C-W>d

command! W execute 'w !sudo tee % > /dev/null' <bar>edit!

noremap <C-B> gg=G<C-o><C-o>:%s/\S\zs\s\+$//g<cr>
noremap <silent> <Space> :nohlsearch<Bar>:echo<cr>
nmap <BS> <C-W>sjk

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

nnoremap <C-M> :NERDTreeFocus<cr>
nnoremap <C-N> :NERDTreeToggle<cr>
