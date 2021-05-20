"" Here are a couple useful bindings. I have the memory of a goldfish.
"" gg   -> go to first line of the file
"" G    -> go to the last line of the file
"" dd   -> cut the current line to the clipboard
"" V    -> enter line-by-line visual mode
"" yy   -> yank the current selection
"" p    -> paste from the clipboard
"" s    -> replace a string with another string
"" r    -> replace a single character

syntax on

unmap gj
unmap qm
unmap q

"" MOVEMENT BINDS
noremap <S-J> <C-D>
noremap <S-K> <C-U>
noremap <S-H> 0wi               .
noremap <S-L> $a

"" MODE BINDS
inoremap jn <esc>

"" REGISTER BINDS - YANK
xnoremap gja "ay
xnoremap gjs "sy
xnoremap gjd "dy
xnoremap gjf "fy

"" REGISTER BINDS - CUT
xnoremap gva "ay
xnoremap gvs "sy
xnoremap gvd "dy
xnoremap gvf "fy

"" REGISTER BINDS - PASTE
xnoremap gna "ap
xnoremap gns "sp
xnoremap gnd "dp
xnoremap gnf "fp

"" MARKER BINDS - SET
noremap qnh mh
noremap qnj mj
noremap qnk mk
noremap qnl ml

"" MARKER BINDS - GO
noremap qmh `h
noremap qmj `j
noremap qmk `k
noremap qml `l
