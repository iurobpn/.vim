" ~/git/.vim/sessions/thesis.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 10 maio 2019 at 14:20:26.
" Open this file in Vim and run :source % to restore your session.

set guioptions=aegimrLtT
silent! set guifont=
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'gruvbox' | colorscheme gruvbox | endif
call setqflist([{'lnum': 9, 'col': 0, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': 'W', 'module': '', 'filename': 'thesis_main.tex', 'text': 'Package Babel Warning: The package option `english'' should not be used'}, {'lnum': 0, 'col': 0, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': 'W', 'module': '', 'filename': 'thesis_main.tex', 'text': 'Package geometry Warning: The marginal notes overrun the paper.'}, {'lnum': 0, 'col': 0, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': 'W', 'module': '', 'filename': 'thesis_main.tex', 'text': 'Package minitoc(hints) Warning: W0030                --- The \part command is altered                 after minitoc.'}, {'lnum': 0, 'col': 0, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': 'W', 'module': '', 'filename': 'thesis_main.tex', 'text': 'Package minitoc(hints) Warning: W0023                --- It may be the consequence                 of loading the ``hyperref'''' package.'}, {'lnum': 0, 'col': 0, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': 'W', 'module': '', 'filename': 'thesis_main.tex', 'text': 'Package minitoc(hints) Warning: W0028                --- The \chapter command is altered                 after minitoc.'}, {'lnum': 0, 'col': 0, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': 'W', 'module': '', 'filename': 'thesis_main.tex', 'text': 'Package minitoc(hints) Warning: W0023                --- It may be the consequence                 of loading the ``hyperref'''' package.'}, {'lnum': 1, 'col': 0, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': 'W', 'module': '', 'filename': 'thesis_main.tex', 'text': 'Package hyperref Warning: Token not allowed in a PDF string (Unicode):                 removing `\spacefactor'''}, {'lnum': 1, 'col': 0, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': 'W', 'module': '', 'filename': 'thesis_main.tex', 'text': 'Package hyperref Warning: Token not allowed in a PDF string (Unicode):                 removing `\@m'''}, {'lnum': 0, 'col': 0, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': 'W', 'module': '', 'filename': 'thesis_main.tex', 'text': 'LaTeX Font Warning: Font shape `U/wasy/b/n'' in size <5> not available               Font shape `U/wasy/m/n'' tried instead on input line 57.'}, {'lnum': 667, 'col': 0, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': 'W', 'module': '', 'filename': 'thesis_main.tex', 'text': 'Package hyperref Warning: Token not allowed in a PDF string (Unicode):                 removing `\hbox'''}, {'lnum': 667, 'col': 0, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': 'W', 'module': '', 'filename': 'thesis_main.tex', 'text': 'Package hyperref Warning: Token not allowed in a PDF string (Unicode):                 removing `\mathsurround'''}, {'lnum': 667, 'col': 0, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': 'W', 'module': '', 'filename': 'thesis_main.tex', 'text': 'Package hyperref Warning: Token not allowed in a PDF string (Unicode):                 removing `\z@'''}, {'lnum': 667, 'col': 0, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': 'W', 'module': '', 'filename': 'thesis_main.tex', 'text': 'Package hyperref Warning: Token not allowed in a PDF string (Unicode):                 removing `\unskip'''}, {'lnum': 667, 'col': 0, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': 'W', 'module': '', 'filename': 'thesis_main.tex', 'text': 'Package hyperref Warning: Token not allowed in a PDF string (Unicode):                 removing `\@@italiccorr'''}, {'lnum': 792, 'col': 0, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': 'W', 'module': '', 'filename': 'thesis_main.tex', 'text': 'LaTeX Font Warning: Command \footnotesize invalid in math mode on input line 792.'}, {'lnum': 792, 'col': 0, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': 'W', 'module': '', 'filename': 'thesis_main.tex', 'text': 'LaTeX Font Warning: Command \normalsize invalid in math mode on input line 792.'}, {'lnum': 792, 'col': 0, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': 'W', 'module': '', 'filename': 'thesis_main.tex', 'text': 'LaTeX Font Warning: Command \footnotesize invalid in math mode on input line 792.'}, {'lnum': 792, 'col': 0, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': 'W', 'module': '', 'filename': 'thesis_main.tex', 'text': 'LaTeX Font Warning: Command \normalsize invalid in math mode on input line 792.'}, {'lnum': 0, 'col': 0, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': 'W', 'module': '', 'filename': 'thesis_main.tex', 'text': 'Package minitoc(hints) Warning: W0024                Some hints have been written                 in the thesis_main.log file.'}])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/git/master_thesis
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +361 thesis_main.tex
badd +0 thesis_bibliography.bib
argglobal
silent! argdel *
edit thesis_bibliography.bib
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
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
let s:l = 1 - ((0 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/git/master_thesis
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

1wincmd w
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
