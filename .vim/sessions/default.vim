" ~/.vim/sessions/default.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 12 Dezembro 2015 at 14:04:13.
" Open this file in Vim and run :source % to restore your session.

set guioptions=egm
silent! set guifont=
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'onedark' | colorscheme onedark | endif
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Development/jusbrasil_projects/jusbrasil-webpy
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +11682 tests/unit/components/perfil.py
badd +1138 jusbrasil/web/components/perfil.py
badd +364 jusbrasil/web/components/advogados.py
badd +170 tests/unit/mocks/conversation_mock.py
badd +13 bower.json
badd +4 jusbrasil/web/templates/components/perfil/legal_case_response_message.html
badd +1 jusbrasil/web/templates/components/perfil/profile_conversation_message_read.html
badd +0 jusbrasil/web/templates/components/perfil/profile_conversation_message.html
argglobal
silent! argdel *
edit tests/unit/mocks/conversation_mock.py
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 3 + 30) / 61)
exe 'vert 1resize ' . ((&columns * 91 + 91) / 182)
exe '2resize ' . ((&lines * 55 + 30) / 61)
exe 'vert 2resize ' . ((&columns * 91 + 91) / 182)
exe '3resize ' . ((&lines * 3 + 30) / 61)
exe 'vert 3resize ' . ((&columns * 90 + 91) / 182)
exe '4resize ' . ((&lines * 3 + 30) / 61)
exe 'vert 4resize ' . ((&columns * 90 + 91) / 182)
exe '5resize ' . ((&lines * 51 + 30) / 61)
exe 'vert 5resize ' . ((&columns * 90 + 91) / 182)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 170 - ((1 * winheight(0) + 1) / 3)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
170
normal! 036|
wincmd w
argglobal
edit tests/unit/components/perfil.py
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 11087 - ((0 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11087
normal! 05|
wincmd w
argglobal
edit jusbrasil/web/templates/components/perfil/profile_conversation_message.html
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 32 - ((1 * winheight(0) + 1) / 3)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
32
normal! 010|
wincmd w
argglobal
edit jusbrasil/web/templates/components/perfil/profile_conversation_message_read.html
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 1) / 3)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 013|
wincmd w
argglobal
edit jusbrasil/web/components/perfil.py
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1115 - ((26 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1115
normal! 0
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 3 + 30) / 61)
exe 'vert 1resize ' . ((&columns * 91 + 91) / 182)
exe '2resize ' . ((&lines * 55 + 30) / 61)
exe 'vert 2resize ' . ((&columns * 91 + 91) / 182)
exe '3resize ' . ((&lines * 3 + 30) / 61)
exe 'vert 3resize ' . ((&columns * 90 + 91) / 182)
exe '4resize ' . ((&lines * 3 + 30) / 61)
exe 'vert 4resize ' . ((&columns * 90 + 91) / 182)
exe '5resize ' . ((&lines * 51 + 30) / 61)
exe 'vert 5resize ' . ((&columns * 90 + 91) / 182)
tabnext 1
if exists('s:wipebuf')
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=9999 winwidth=20 shortmess=filnxtToOc
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

2wincmd w
tabnext 1
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
