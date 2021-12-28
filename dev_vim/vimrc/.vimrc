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

" ai = automatic indent
" si = smart indent
set ai
set si

" line breaks at 80 characters - this is a little bit short by modern
" standards, some might prefer 120 or even more
set lbr
set tw=80

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

" make searching less case-sensitive
set ignorecase
set smartcase

" highlight search results
set hlsearch

" search every time a character is typed
set incsearch

" don't redraw the screen while executing macros
" i'd just like to say, you can get CRAZY performance from this
" like i just tested this by doing qqjkjjkkq 100000@q and there was next
" to NO lag
set lazyredraw

" show search matches while typing
set showmatch

" set up Vundle
set rtp+=~/.vim/bundle/Vundle.vim

" 256 color terminal
set t_Co=256

" add support for vlang
au BufRead,BufNewFile *.v set filetype=v

" whenever you close and re-open a file, automatically go to the last position
" you were just editing at
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

try
    call vundle#begin()
    Plugin 'scrooloose/nerdtree'
    Plugin 'tpope/vim-commentary'
    Plugin 'tpope/vim-surround'
    Plugin 'scrooloose/nerdcommenter'
    Plugin 'luochen1990/rainbow'
    Plugin 'rhysd/vim-github-support'
    Plugin 'powerline/powerline-fonts'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'joshdick/onedark.vim'
    Plugin 'pangloss/vim-javascript'
    Plugin 'yggdroot/indentline'
    Plugin 'plasticboy/vim-markdown'
    Plugin 'raimondi/delimitmate'
    call vundle#end()

    filetype plugin indent on

    " NERDTree config
    autocmd StdinReadPre * let s:std_in=1
    autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
    let g:NERDTreeDirArrowExpandable = '>'
    let g:NERDTreeDirArrowCollapsible = '<'

    " NERDCommenter config
    " https://github.com/preservim/nerdcommenter
    let g:NERDCommentEmptyLines = 1
    let g:NERDTrimTrailingWhitespace = 1
    let g:NERDSpaceDelims = 1

    " airline config
    " in order for airline to work properly, you need to be using a font that
    " supports all of the required characters - on my laptop, i'm using
    " ubuntu mono and it works perfectly fine. unfortunately, roboto mono
    " does... NOT work perfectly fine, so yeah... anyways...
    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif
    
    " most of this is default airline stuff
    let g:airline_left_sep = '»'
    let g:airline_left_sep = '▶'
    let g:airline_right_sep = '«'
    let g:airline_right_sep = '◀'
    let g:airline_symbols.linenr = '␊'
    let g:airline_symbols.linenr = '␤'
    let g:airline_symbols.linenr = '¶'
    let g:airline_symbols.branch = '⎇'
    let g:airline_symbols.paste = 'ρ'
    let g:airline_symbols.paste = 'Þ'
    let g:airline_symbols.paste = '∥'
    let g:airline_symbols.whitespace = ' '
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''

    " by default, airline uses fancy LN and CN characters for line number and
    " column number, but i really don't like how crowded that looks
    let g:airline_symbols.linenr = '  L '
    let g:airline_symbols.colnr = '  C '

    " make sure powerline fonts are being used
    let g:airline_powerline_fonts = 1
    let g:Powerline_symbols = 'fancy'

    " and of course we need to have a matching color scheme!
    let g:airline_theme = 'onedark'
    color onedark
catch
endtry

let mapleader = ','

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

" disable the usage of the arrow keys so that you're forced to learn how to
" use vim... muahaha
noremap <Up> <Nop>
noremap <Right> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>

" space once searches forwards
" space twice searches backwards
" space three times resets search highlighting
noremap <Space> /
noremap <Space><Space> ?
noremap <Space><Space><Space> :noh<cr>:echo 'Cleared search'<cr>

" this one is also super important - map control + forward slash to =
" the NERDCommenter command ',c ' which toggles whether the currently
" selected lines are commented or not. as an added bonus, use gv at the
" end to select the last visual selection - how lovely!
"
" also, for some reason, you need to use C-_ instead of C-/
" i'm not sure why, but this might help?
" https://vi.stackexchange.com/questions/26611/is-it-possible-to-map-control-forward-slash-with-vim
map <C-_> <leader>c<space>gv

" map ctrl+backspace to ctrl+w, this makes it function just like normal
" ctrl+backspace on a regular editor
inoremap <C-H> <C-W>

" make it so < and > (indentation commands) automatically select the last
" visual selection so you can change multiple levels of indentation at
" the same time
noremap > >gv
noremap < <gv

" if you have word wrapping enabled, you can't navigate around a file
" normally because you'll end up skipping lines... i don't really know
" how to explain this, but basically it makes it so it's easier to navigate
" files with word wrapping...
noremap j gj
noremap k gk

" make this more consistent with c and d commands
noremap Y y$

" open/close/focus NERDtree
nnoremap <C-M> :NERDTreeFocus<cr>
nnoremap <C-N> :NERDTreeToggle<cr>
