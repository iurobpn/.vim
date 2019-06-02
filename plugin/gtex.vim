" Vim global plugin for complementing vimtex plugin in latex writing
" Last Change:	2019 Mai 23
" Maintainer:	Iuro Nascimento <iurobpn@gmail.com>
" License:	This file is placed in the public domain.

if exists("g:loaded_gtex")
  finish
endif
let g:loaded_gtex = 1

let s:save_cpo = &cpo
set cpo&vim



" let s:count = 4

" if !hasmapto('<Plug>TypecorrAdd')
"   map <unique> <Leader>a  <Plug>TypecorrAdd
" endif
" noremap <unique> <script> <Plug>TypecorrAdd  <SID>Add
" noremenu <script> Plugin.Add\ Correction      <SID>Add
" noremap <SID>Add  :call <SID>Add(expand("<cword>"), 1)<CR>

" function s:Add(from, correct)
"   let to = input("type the correction for " . a:from . ": ")
"   exe ":iabbrev " . a:from . " " . to
"   if a:correct | exe "normal viws\<C-R>\" \b\e" | endif
"   let s:count = s:count + 1
"   echo s:count . " corrections now"
" endfunction

" if !exists(":Correct")
"   command -nargs=1  Correct  :call s:Add(<q-args>, 0)
" endif

let &cpo = s:save_cpo
unlet s:save_cpo

