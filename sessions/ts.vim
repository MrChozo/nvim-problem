let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Documents/education-notes
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +22 Unix-like\ CLI\ Tools/Vim\ and\ NeoVim/bash-vi-editing-mode.md
badd +28 Utilities/AI\ and\ ChatGPT/20241111.md
badd +20 Utilities/AI\ and\ ChatGPT/20241118.md
badd +16 SQL/PostgreSQL/psql.md
badd +1 SQL/PostgreSQL/notes_20180115.md
badd +18 JavaScript\ TypeScript\ jQuery/typescript-getting-started.md
argglobal
%argdel
edit undotree_2
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
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
1wincmd k
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 39 + 26) / 52)
exe 'vert 1resize ' . ((&columns * 30 + 104) / 209)
exe '2resize ' . ((&lines * 10 + 26) / 52)
exe 'vert 2resize ' . ((&columns * 30 + 104) / 209)
exe '3resize ' . ((&lines * 13 + 26) / 52)
exe 'vert 3resize ' . ((&columns * 178 + 104) / 209)
exe '4resize ' . ((&lines * 36 + 26) / 52)
exe 'vert 4resize ' . ((&columns * 178 + 104) / 209)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 4 - ((3 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 4
normal! 0
lcd ~/Documents/education-notes
wincmd w
argglobal
if bufexists(fnamemodify("~/Documents/education-notes/diffpanel_3", ":p")) | buffer ~/Documents/education-notes/diffpanel_3 | else | edit ~/Documents/education-notes/diffpanel_3 | endif
if &buftype ==# 'terminal'
  silent file ~/Documents/education-notes/diffpanel_3
endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 5) / 10)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
lcd ~/Documents/education-notes
wincmd w
argglobal
enew
balt ~/Documents/education-notes/JavaScript\ TypeScript\ jQuery/typescript-getting-started.md
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
lcd ~/Documents/education-notes
wincmd w
argglobal
if bufexists(fnamemodify("~/Documents/education-notes/JavaScript\ TypeScript\ jQuery/typescript-getting-started.md", ":p")) | buffer ~/Documents/education-notes/JavaScript\ TypeScript\ jQuery/typescript-getting-started.md | else | edit ~/Documents/education-notes/JavaScript\ TypeScript\ jQuery/typescript-getting-started.md | endif
if &buftype ==# 'terminal'
  silent file ~/Documents/education-notes/JavaScript\ TypeScript\ jQuery/typescript-getting-started.md
endif
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
3
normal! zo
let s:l = 18 - ((17 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 18
normal! 0
lcd ~/Documents/education-notes
wincmd w
4wincmd w
exe '1resize ' . ((&lines * 39 + 26) / 52)
exe 'vert 1resize ' . ((&columns * 30 + 104) / 209)
exe '2resize ' . ((&lines * 10 + 26) / 52)
exe 'vert 2resize ' . ((&columns * 30 + 104) / 209)
exe '3resize ' . ((&lines * 13 + 26) / 52)
exe 'vert 3resize ' . ((&columns * 178 + 104) / 209)
exe '4resize ' . ((&lines * 36 + 26) / 52)
exe 'vert 4resize ' . ((&columns * 178 + 104) / 209)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
