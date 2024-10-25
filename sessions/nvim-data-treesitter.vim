let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/AppData/Local/nvim-data
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 ~/AppData/Local/nvim-data
badd +22 lazy/nvim-treesitter/lua/nvim-treesitter.lua
badd +135 lazy/nvim-treesitter/lua/nvim-treesitter/configs.lua
badd +1 health://
argglobal
%argdel
$argadd ~/AppData/Local/nvim-data
edit lazy/nvim-treesitter/lua/nvim-treesitter/configs.lua
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
exe 'vert 1resize ' . ((&columns * 135 + 104) / 209)
exe 'vert 2resize ' . ((&columns * 73 + 104) / 209)
argglobal
balt lazy/nvim-treesitter/lua/nvim-treesitter.lua
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
silent! normal! zE
410,441fold
let &fdl = &fdl
let s:l = 135 - ((49 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 135
normal! 018|
lcd ~/AppData/Local/nvim-data
wincmd w
argglobal
if bufexists(fnamemodify("~/AppData/Local/nvim-data/lazy/nvim-treesitter/lua/nvim-treesitter.lua", ":p")) | buffer ~/AppData/Local/nvim-data/lazy/nvim-treesitter/lua/nvim-treesitter.lua | else | edit ~/AppData/Local/nvim-data/lazy/nvim-treesitter/lua/nvim-treesitter.lua | endif
if &buftype ==# 'terminal'
  silent file ~/AppData/Local/nvim-data/lazy/nvim-treesitter/lua/nvim-treesitter.lua
endif
balt ~/AppData/Local/nvim-data/lazy/nvim-treesitter/lua/nvim-treesitter/configs.lua
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
let s:l = 22 - ((21 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 22
normal! 08|
lcd ~/AppData/Local/nvim-data
wincmd w
exe 'vert 1resize ' . ((&columns * 135 + 104) / 209)
exe 'vert 2resize ' . ((&columns * 73 + 104) / 209)
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
