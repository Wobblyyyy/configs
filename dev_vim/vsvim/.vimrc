"" used for vsvim

noremap <S-J> <C-D>
noremap <S-K> <C-U>
noremap <S-B> ?[A-Z\n\r\t "'(){}.,;]<cr>
noremap <S-W> /[A-Z\n\r\t "'(){}.,;]<cr>
noremap <C-A> <C-V>
noremap <C-W> ?[A-Z\n\r\t "'(){}.,;]<cr>lv/[A-Z\n\r\t "'(){}.,;]<cr>h

noremap no ?[\"]<cr>lv/[\"]<cr>h
noremap np ?[(]<cr>lv/[)]<cr>h
noremap nc ?[{]<cr>v/[}]<cr>h
noremap nl ?[\n\r\t(){}]<cr>lv/[\n\r\t(){}]<cr>h
noremap nn ?[A-Z\n\r\t "'(){}.,;]<cr>lv/[A-Z\n\r\t "'(){}.,;]<cr>h

noremap nwo /[\"]<cr>lv/[\"]<cr>h
noremap nwp /[(]<cr>lv/[)]<cr>h
noremap nwc /[{]<cr>v/[}]<cr>h
noremap nwl /[\n\r\t(){}]<cr>lv/[\n\r\t(){}]<cr>h
noremap nwn /[A-Z\n\r\t "'(){}.,;]<cr>lv/[A-Z\n\r\t "'(){}.,;]<cr>h

noremap nbo ?[\"]<cr>hv?[\"]<cr>l
noremap nbp ?[(]<cr>hv?[)]<cr>l
noremap nbc ?[{]<cr>hv?[}]<cr>l
noremap nbl ?[\n\t(){}]<cr>hv?[\n\t(){}]<cr>l
noremap nbn ?[A-Z\n\r\t "'(){}.,;]<cr>hv?[A-Z\n\r\t "'(){}.,;]<cr>l

nmap <C-R> <C-W>s
nmap <C-I> <C-W>d
noremap <C-B> gg=G<C-o><C-o>:%s/\S\zs\s\+$//g<cr>
inoremap jk <esc>
