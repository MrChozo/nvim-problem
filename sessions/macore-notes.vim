let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd G:/My\ Drive/Macore
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 G:/My\ Drive/Macore
badd +165 revamp-project/php-macoresite-reloaded-2.0/item-listing-rewrite/item-listing-rewrite.md
argglobal
%argdel
$argadd G:/My\ Drive/Macore
edit revamp-project/php-macoresite-reloaded-2.0/item-listing-rewrite/item-listing-rewrite.md
argglobal
setlocal fdm=expr
setlocal fde=MarkdownFold()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
1
normal! zo
41
normal! zo
42
normal! zo
86
normal! zo
92
normal! zo
112
normal! zo
116
normal! zo
124
normal! zo
135
normal! zo
180
normal! zo
135
normal! zc
let s:l = 76 - ((75 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 76
normal! 015|
lcd G:/My\ Drive/Macore
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
