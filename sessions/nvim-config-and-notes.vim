let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/.config/nvim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +185 ~/Documents/education-notes/Unix-like\ CLI\ Tools/Vim\ and\ NeoVim/vimTricks.md
badd +32 init.lua
badd +1 ~/.config/nvim
badd +1 ~/AppData/Local/nvim/lua/config/lazy.lua
badd +18 ~/AppData/Local/nvim/lua/plugins/treesitter.nvim.lua
badd +2 lua/plugins/folke.tokyonight.nvim.lua
argglobal
%argdel
$argadd H:/My\ Drive/Personal\ Files/Career\ Development/jobsAppliedFor/CompuNet\ -\ Solutions\ Architect\ -\ Software\ Engineer/20241015-call-notes.md
edit init.lua
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
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
exe 'vert 1resize ' . ((&columns * 104 + 104) / 209)
exe 'vert 2resize ' . ((&columns * 104 + 104) / 209)
argglobal
balt ~/Documents/education-notes/Unix-like\ CLI\ Tools/Vim\ and\ NeoVim/vimTricks.md
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 23 - ((22 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 23
normal! 011|
lcd ~/.config/nvim
wincmd w
argglobal
if bufexists(fnamemodify("~/Documents/education-notes/Unix-like\ CLI\ Tools/Vim\ and\ NeoVim/vimTricks.md", ":p")) | buffer ~/Documents/education-notes/Unix-like\ CLI\ Tools/Vim\ and\ NeoVim/vimTricks.md | else | edit ~/Documents/education-notes/Unix-like\ CLI\ Tools/Vim\ and\ NeoVim/vimTricks.md | endif
if &buftype ==# 'terminal'
  silent file ~/Documents/education-notes/Unix-like\ CLI\ Tools/Vim\ and\ NeoVim/vimTricks.md
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
8
normal! zo
33
normal! zo
46
normal! zo
72
normal! zo
72
normal! zc
let s:l = 49 - ((48 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 49
normal! 0
lcd ~/.config/nvim
wincmd w
exe 'vert 1resize ' . ((&columns * 104 + 104) / 209)
exe 'vert 2resize ' . ((&columns * 104 + 104) / 209)
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
