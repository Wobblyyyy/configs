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

unmap <C-H>
unmap <C-J>
unmap <C-K>
unmap <C-L>

"" MOVEMENT BINDS
noremap <S-J> <C-D>
noremap <S-K> <C-U>
noremap <S-H> 0wi
noremap <S-L> $a

"" MODE BINDS
inoremap jk <esc>

"" REGISTER BINDS
noremap q01 "ay
noremap q02 "by
noremap q03 "cy
noremap q04 "dy
noremap q91 "ax
noremap q92 "bx
noremap q93 "cx
noremap q94 "dx
noremap q81 "a0""p
noremap q82 "b0""p
noremap q83 "c0""p
noremap q84 "d0""p

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
