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
set statusline=%<%F%h%m%r%h%w%y\ %{&ff}\ %{strftime(\"%d/%m/%Y-%H:%M\")}%=\ col:%c%V\ ascii:%b\ pos:%o\ lin:%l\,%L\ %P

noremap <S-J> <C-D>
noremap <S-K> <C-U>
noremap <S-B> ?\u<cr>
noremap <S-W> /\u<cr>
noremap <C-A> <C-V>
noremap <C-W> ?[\t\r\nA-Z "'\[\]\(\)\{\}.,;]<cr>lv/[\t\r\nA-Z "'\[\]\(\)\{\}.,;]<cr>h
nmap <C-R> <C-W>s
nmap <C-I> <C-W>d
command! W execute 'w !sudo tee % > /dev/null' <bar>edit!
noremap <C-B> gg=G<C-o><C-o>:%s/\S\zs\s\+$//g<cr>
"" noremap <C-B> /\S\zs\s\+$<cr>
noremap <silent> <Space> :nohlsearch<Bar>:echo<cr>

inoremap jk <esc>
au BufRead,BufNewFile *.v set filetype=v
color molokai
