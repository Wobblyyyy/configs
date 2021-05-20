"                                                                                                                                      
"                                                                                                                                      
"   iiii                     333333333333333                                   iiii                                         ))))))     
"  i::::i            <<<<<<<3:::::::::::::::33                                i::::i                                       )::::::))   
"   iiii            <:::::< 3::::::33333::::::3                                iiii                                         ):::::::)) 
"                  <:::::<  3333333     3:::::3                                                                              )):::::::)
" iiiiiii         <:::::<               3:::::3     vvvvvvv           vvvvvvviiiiiii    mmmmmmm    mmmmmmm                     )::::::)
" i:::::i        <:::::<                3:::::3      v:::::v         v:::::v i:::::i  mm:::::::m  m:::::::mm        ;;;;;;      ):::::)
"  i::::i       <:::::<         33333333:::::3        v:::::v       v:::::v   i::::i m::::::::::mm::::::::::m       ;::::;      ):::::)
"  i::::i      <:::::<          3:::::::::::3          v:::::v     v:::::v    i::::i m::::::::::::::::::::::m       ;;;;;;      ):::::)
"  i::::i       <:::::<         33333333:::::3          v:::::v   v:::::v     i::::i m:::::mmm::::::mmm:::::m                   ):::::)
"  i::::i        <:::::<                3:::::3          v:::::v v:::::v      i::::i m::::m   m::::m   m::::m                   ):::::)
"  i::::i         <:::::<               3:::::3           v:::::v:::::v       i::::i m::::m   m::::m   m::::m                   ):::::)
"  i::::i          <:::::<              3:::::3            v:::::::::v        i::::i m::::m   m::::m   m::::m       ;;;;;;     )::::::)
" i::::::i          <:::::< 3333333     3:::::3             v:::::::v        i::::::im::::m   m::::m   m::::m       ;::::;   )):::::::)
" i::::::i           <<<<<<<3::::::33333::::::3              v:::::v         i::::::im::::m   m::::m   m::::m       ;:::;;  ):::::::)) 
" i::::::i                  3:::::::::::::::33                v:::v          i::::::im::::m   m::::m   m::::m      ;:::;   )::::::)    
" iiiiiiii                   333333333333333                   vvv           iiiiiiiimmmmmm   mmmmmm   mmmmmm      ;;;;     ))))))     

" Yes, that's a winky face.
" You should probably turn back now before it's too late. These non-recursive mappings are about to get funky.
" If you're wondering why a vim configuration nobody on the planet except for myself will ever use has ASCII
" art, you've answered your own question. Honestly, there's not much of a reason - it just increases the file
" size. And makes you wonder why there's an ASCII winky face staring you down right now.

" I'll be honest, I'm one of the peasants who hasn't yet switched to exclusively
" using vim as an editor instead of using vim within an existing IDE.
# Regardless, moving on...

" Here are a couple useful bindings. I have the memory of a goldfish.
" gg   -> go to first line of the file
" G    -> go to the last line of the file
" dd   -> cut the current line to the clipboard
" V    -> enter line-by-line visual mode
" yy   -> yank the current selection
" p    -> paste from the clipboard
" s    -> replace a string with another string
" r    -> replace a single character 

syntax on

" MOVEMENT BINDS
:nnoremap <S-J> <C-D>              " Jump 10 lines down.
:nnoremap <S-K> <C-U>              " Jump 10 lines up.
:nnoremap <S-H> 0wi                " Shift + H jumps to the first active column of the line.
:nnoremap <S-L> $a                 " Shift + L jumps to the last active column of the line.





" MODE BINDS
:inoremap jn <esc>                 " Typing "jn" in insert mode will activate normal mode.





" REGISTER BINDS - YANK
:nnoremap gja "ay                  " "gja" copies to the A register.
:nnoremap gjs "sy                  " "gjs" copies to the S register.
:nnoremap gjd "dy                  " "gjd" copies to the D register.
:nnoremap gjf "fy                  " "gjf" copies to the F register.

" REGISTER BINDS - CUT
:nnoremap gva "ay                  " "gva" cuts to the A register.
:nnoremap gvs "sy                  " "gvs" cuts to the S register.
:nnoremap gvd "dy                  " "gvd" cuts to the D register.
:nnoremap gvf "fy                  " "gvf" cuts to the F register.

" REGISTER BINDS - PASTE
:nnoremap gna "ap                  " "gna" pastes from the A register.
:nnoremap gns "sp                  " "gns" pastes from the S register.
:nnoremap gnd "dp                  " "gnd" pastes from the D register.
:nnoremap gnf "fp                  " "gnf" pastes from the F register.

" The G key acts as a portal to accessing four registers.
" I'm only using A, S, D, and F - do you really need any more clipboards?
" GJ -> YANK
" GN -> PASTE
" GV -> CUT





" MARKER BINDS - SET
:nnoremap qnh mh                    " "qnh" sets the H marker.
:nnoremap qnj mj                    " "qnj" sets the J marker.
:nnoremap qnk mk                    " "qnk" sets the K marker.
:nnoremap qnl ml                    " "qnl" sets the L marker.

" MARKER BINDS - GO
:nnoremap qmh `h                    " "qmh" jumps to the H marker.
:nnoremap qmj `j                    " "qmj" jumps to the J marker.
:nnoremap qmk `k                    " "qmk" jumps to the K marker.
:nnoremap qml `l                    " "qml" jumps to the L marker.

" Hitting Q opens up a transdimensional portal to the world of markers.
" After opening the portal, you have two options.

" Shall you choose qn -> qnh -> Set H marker.
"                        qnj -> Set J marker.
"                        qnk -> Set K marker.
"                        qnl -> Set L marker.

" Shall you choose qm -> qmh -> Go to H marker.
"                        qmj -> Go to J marker.
"                        qmk -> Go to K marker.
"                        qml -> Go to L marker.
