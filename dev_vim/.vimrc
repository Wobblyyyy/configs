" I'll be honest, I'm one of the peasants who hasn't yet switched to exclusively
" using vim as an editor instead of using vim within an existing IDE.
# Regardless.
syntax on

" MOVEMENT BINDS
:nnoremap <S-J> <C-D>              " Shift + J jumps 1/2 page down
:nnoremap <S-K> <C-U>              " Shift + K jumps 1/2 page up
:nnoremap <S-H> 0wi                " Shift + H jumps to the first active column of the line.
:nnoremap <S-L> $a                 " Shift + L jumps to the last active column of the line.

" MODE BINDS
:inoremap jn <esc>                 " Typing "jn" in insert mode will activate normal mode.

" REGISTER BINDS - YANK
:nnoremap gja "ay                  # "gja" copies to the A register.
:nnoremap gjs "sy                  # "gjs" copies to the S register.
:nnoremap gjd "dy                  # "gjd" copies to the D register.
:nnoremap gjf "fy                  # "gjf" copies to the F register.

" REGISTER BINDS - CUT
:nnoremap gda "ay                  # "gda" cuts to the A register.
:nnoremap gds "sy                  # "gds" cuts to the S register.
:nnoremap gdd "dy                  # "gdd" cuts to the D register.
:nnoremap gdf "fy                  # "gdf" cuts to the F register.

" REGISTER BINDS - PASTE
:nnoremap gna "ap                  # "gna" pastes from the A register.
:nnoremap gns "sp                  # "gns" pastes from the S register.
:nnoremap gnd "dp                  # "gnd" pastes from the D register.
:nnoremap gnf "fp                  # "gnf" pastes from the F register.

" The G key acts as a portal to accessing four registers.
" I'm only using A, S, D, and F - do you really need any more clipboards?
" GJ -> YANK
" GN -> PASTE
" GD -> CUT
