" Vim global plugin for complementing vimtex plugin in latex writing
" Last Change:	2019 Mai 23
" Maintainer:	Iuro Nascimento <iurobpn@gmail.com>
" License:	This file is placed in the public domain.

if exists("g:loaded_llf")
  finish
endif
let g:loaded_ab = 1

let s:save_cpo = &cpo
set cpo&vim
if !exists('g:loadable_local_files')
	let g:loadable_local_files = ['Session.vim', 'Ab.vim']
endif
" iabbrev wik $w_{ik}$
function! LoadFiles()
	for filename in g:loadable_local_files
		if filereadable(filename)
			exe 'source ' . filename
		endif
	endfor
endfunction

command LoadLocalFiles :call LoadFiles()
" function ab_init()
" 	findfile()specific file
" endfunction
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
" augroup loadLocalFiles
"   autocmd!
"   autocmd VimEnter * LoadLocalFiles
" augroup END

let &cpo = s:save_cpo
unlet s:save_cpo

