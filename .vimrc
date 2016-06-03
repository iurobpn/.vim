" this is to receive CTRL-S and CTRL-Q
silent !stty -ixon > /dev/null 2>/dev/null

" disable vi compatibility (emulation of old bugs)
set nocompatible
set exrc


" setup Vundle (run :PluginInstall to install plugins)
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" plugin to enable Vundle 
Plugin 'VundleVim/Vundle.vim'

" plugin to enable git integration
Plugin 'tpope/vim-fugitive'

" Plugin 'Valloric/YouCompleteMe' 
Plugin 'Shougo/neocomplete.vim'
" plugins to enable snippets support

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
" Plugin 'garbas/vim-snipmate'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" enable NERD tree - allows you to explore your filesystem 
" and to open files and directories.
Plugin 'scrooloose/nerdtree.git'

" enable CTRLP - Full path fuzzy file, buffer, mru, tag, 
" etc, finder for Vim
Plugin 'ctrlpvim/ctrlp.vim'

" enable linuxsty - Linux Kernel Coding Style
Plugin 'vivien/vim-addon-linux-coding-style'

" enable doxygen plugin
" Plugin 'mrtazz/DoxygenToolkit.vim'
" a more recent version on ~/.vim/plugins

" enable Wordpress Integration plugin
Plugin 'vim-scripts/VimRepress'

" syntax checking plugin for Vim that runs files through external syntax
" checkers and displays any resulting errors to the user.
" Plugin 'scrooloose/syntastic'

" buffer explorer
Plugin 'jlanzarotta/bufexplorer'

"enable GDB integration
Plugin 'vim-scripts/Conque-GDB'

"enable enhanced c++ syntax and highlighting
Plugin 'octol/vim-cpp-enhanced-highlight'

" create an outline of tags in current file/buffer
Plugin 'majutsushi/tagbar'

" Plugin 'craigemery/vim-autotag'

" Plugin for toggling comments
Plugin 'tomtom/tcomment_vim'

Plugin 'vim-latex/vim-latex'

Plugin 'klen/python-mode'

" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" Plugin 'powerline/powerline'

Plugin 'davidhalter/jedi-vim'

" end of Vundle initialization
call vundle#end()

filetype plugin indent on
filetype on

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsListSnippets = "<c-l>"
" youcompleteme config  to not conlict with UltiSnips
" let g:ycm_key_list_select_completion=[]
" let g:ycm_key_list_previous_completion=[]
" let g:ycm_python_binary_path = '/usr/bin/python3'
" let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" neocomplete config
let g:neocomplete#enable_at_startup = 1

" python-mode configurations
let g:pymode = 0

" let g:pymode_warnings = 0
" let g:pymode_trim_whitespaces = 1
" let g:pymode_options = 0
" let g:pymode_quickfix_minheight = 3
" let g:pymode_quickfix_maxheight = 6
" let g:pymode_python = 'python3'
" let g:pymode_indent = 1
" let g:pymode_motion = 1
" let g:pymode_doc = 1
" let g:pymode_doc_bind = 'K'
" let g:pymode_run = 1
" let g:pymode_run_bind = '<leader>r'
" let g:pymode_breakpoint = 1
" let g:pymode_breakpoint_bind = '<leader>b'
" let g:pymode_breakpoint_cmd = ''

" lint code checking configuration
" let g:pymode_lint = 1
" let g:pymode_lint_on_write = 0
" let g:pymode_lint_unmodified = 0
" let g:pymode_lint_on_fly = 0
" let g:pymode_lint_message = 1
" let g:pymode_lint_checkers = ['pylint', 'pyflakes', 'pep8', 'mccabe']
" let g:pymode_lint_cwindow = 1
" let g:pymode_lint_signs = 1
" symbols
" let g:pymode_lint_todo_symbol = 'WW'
" let g:pymode_lint_comment_symbol = 'CC'
" let g:pymode_lint_visual_symbol = 'RR'
" let g:pymode_lint_error_symbol = 'EE'
" let g:pymode_lint_info_symbol = 'II'
" let g:pymode_lint_pyflakes_symbol = 'FF'
" let g:pymode_folding = 0

" rope configurations
" let g:pymode_rope_completion = 1
" let g:pymode_rope_complete_on_dot = 1
" let g:pymode_rope_completion_bind = '<C-Space>'
" let g:pymode_rope_autoimport = 1
" let g:pymode_rope_autoimport_modules = ['os', 'shutil', 'datetime'])
" let g:pymode_rope_autoimport_import_after_complete = 0

" Override go-to.definition key shortcut to Ctrl-]
" let g:pymode_rope_goto_definition_bind = "<C-]>"
" let g:pymode_rope_goto_definition_cmd = 'new'
" refactoring
" let g:pymode_rope_rename_bind = '<C-c>rr'
" let g:pymode_rope_rename_module_bind = '<C-c>r1r'
" let g:pymode_rope_organize_imports_bind = '<C-c>ro'
" let g:pymode_rope_autoimport_bind = '<C-c>ra'
" let g:pymode_rope_module_to_package_bind = '<C-c>r1p'
" let g:pymode_rope_extract_method_bind = '<C-c>rm'
" let g:pymode_rope_extract_variable_bind = '<C-c>rl'
" let g:pymode_rope_use_function_bind = '<C-c>ru'
" let g:pymode_rope_move_bind = '<C-c>rv'
" let g:pymode_rope_change_signature_bind = '<C-c>rs'

" syntax
" let g:pymode_syntax = 1
" let g:pymode_syntax_slow_sync = 1
" let g:pymode_syntax_all = 1
" let g:pymode_syntax_print_as_function = 1
" let g:pymode_syntax_highlight_async_await = g:pymode_syntax_all
" let g:pymode_syntax_highlight_self = g:pymode_syntax_all
" let g:pymode_syntax_indent_errors = g:pymode_syntax_all
" let g:pymode_syntax_space_errors = g:pymode_syntax_all
" let g:pymode_syntax_string_formatting = g:pymode_syntax_all
" let g:pymode_syntax_string_format = g:pymode_syntax_all
" let g:pymode_syntax_string_templates = g:pymode_syntax_all
" let g:pymode_syntax_doctests = g:pymode_syntax_all
" let g:pymode_syntax_builtin_objs = g:pymode_syntax_all
" let g:pymode_syntax_builtin_types = g:pymode_syntax_all
" let g:pymode_syntax_highlight_exceptions = g:pymode_syntax_all
" let g:pymode_syntax_docstrings = g:pymode_syntax_all
" let g:pymode_rope = 0

" python jedi configuration
" let g:jedi#completions_enabled = 1
let g:jedi#auto_initialization = 1
let g:jedi#completions_command = "<C-N>"
let g:jedi#goto_command = "<C-]>"
let g:jedi#force_py_version = 3

let g:tex_flavor='latex'
let g:Tex_EnvironmentMaps = 0
let g:Tex_EnvironmentMenus= 0
let g:Tex_FontMaps=0
let g:Tex_FontMenus=0
let g:Tex_SectionMaps=0
let g:Tex_SectionMenus = 0
let g:Tex_AutoFolding=0
let g:Tex_MathMenus=0
let g:TexAdvancedMath = 0
let g:Imap_UsePlaceHolders = 0

augroup group_python
	autocmd!
	autocmd Filetype python setl shiftwidth=4 softtabstop=4 tabstop=4 expandtab
augroup END

augroup xml_grp
	autocmd!
	au BufRead,BufNewFile *.launch	 setfiletype xml
augroup END

augroup ccpp
	autocmd!
	autocmd filetype cpp call SetCppTags() 
	autocmd filetype c call SetCTags() 
augroup END

set backspace=indent,eol,start
set history=50

" disable Linux Kernel Coding Style
let g:loaded_linuxsty=1

" set path variable to current directory (from which you launched vim)
" and to all directories under current directory recursively
set path=$PWD/**

" set spell check
"autocmd BufRead,BufNewFile *.txt setlocal spell spelllang=pt
"autocmd FileType gitcommit set spell spelllang=en
"autocmd FileType txt setlocal spell spelllang=pt
" set spell spelllang=en

" autocomplete words
set complete+=kspell

" use indentation of previous line
set autoindent

" use intelligent indentation for C
" set smartindent
set cindent

" configure tabwidth and insert spaces instead of tabs
set tabstop=8        " tab width is 4 spaces
set shiftwidth=8     " indent also with 4 spaces
" set expandtab        " expand tabs to spaces

" wrap lines at 120 chars.
" set textwidth=120

" show column number
set ruler

" turn syntax highlighting on
syntax on

" turn line numbers on
set number

" highlight matching braces
set showmatch

" show chars on lower bar as they are beeing pressed 
set showcmd

set showmode

" enhanced tab completion on commands
set wildmenu
set wildmode=longest:list,full

" buffer can be in the background if it’s modified
set hidden

" Search
set hlsearch     " highlight matches
set incsearch    " incremental searching
set ignorecase   " searches are case insensitive...
set smartcase    " ... unless they contain at least one capital letter

"This unsets the "last search pattern" register by hitting return
" nnoremap <CR> :noh<CR><CR>

" DoxygenToolkit
" let g:DoxygenToolkit_briefTag_pre="@Synopsis  "
" let g:DoxygenToolkit_paramTag_pre="@Param "
" let g:DoxygenToolkit_returnTag="@Returns   "
" let g:DoxygenToolkit_blockHeader="-------------------------------"
" let g:DoxygenToolkit_blockFooter="---------------------------------"
let g:DoxygenToolkit_authorName="Iuro Nascimento <iurobpn@gmail.com>"
"let g:DoxygenToolkit_licenseTag="MIT"
let g:load_doxygen_syntax=1

" MyNext() and MyPrev(): Movement between tabs OR buffers
function! MyNext()
    if exists( '*tabpagenr' ) && tabpagenr('$') != 1
        " Tab support && tabs open
        normal gt
    else
        " No tab support, or no tabs open
        execute ":bnext"
    endif
endfunction
function! MyPrev()
    if exists( '*tabpagenr' ) && tabpagenr('$') != '1'
        " Tab support && tabs open
        normal gT
    else
        " No tab support, or no tabs open
        execute ":bprev"
    endif
endfunction

" OmniCppComplete options
" let OmniCpp_NamespaceSearch = 1      
" let OmniCpp_GlobalScopeSearch = 1      
" let OmniCpp_ShowAccess = 1      
" let OmniCpp_ShowPrototypeInAbbr = 1
" let OmniCpp_MayCompleteDot = 1      
" let OmniCpp_MayCompleteArrow = 1      
" let OmniCpp_MayCompleteScope = 1      
" let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]


" automatically open and close the popup menu / preview window      
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif      
set completeopt=menuone,menu,longest,preview

" cscope
set cscopetag

" tags definition
function SetCppTags()
	" set tags+=tags;                     " search tags automagically
	set tags+=/home/gagarin/.vim/tags/cpp/boost_1.60
endfunction
function SetCTags()
	set tags+=/home/gagarin/.vim/tags/cpp/stdlib_5.3.0_cpp
	set tags+=/home/gagarin/.vim/tags/cpp/stl_5.3.0_cpp
endfunction

" project tags
" let g:ProjTags = ["/opt/labs/ex/02/linux/"]
" let g:ProjTags = [["/opt/labs/ex/", "/opt/labs/ex/02/linux/tags"]]

" open a NERDTree automatically when vim starts up if no files were specified
" autocmd vimenter * if !argc() | NERDTree | endif

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


" exclude files and directories using Vim's wildignore and CtrlP's own g:ctrlp_custom_ignore
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
" CTRLP configuration
let g:ctrlp_by_filename = 1
let g:ctrlp_switch_buffer = 't'

" Syntastic configuration (source code syntax checking)
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 2
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0
" let b:syntastic_mode = 'passive'
" let g:syntastic_c_checkers=['gcc','cppcheck']
" let g:syntastic_enable_balloons = 1 
" let g:syntastic_auto_jump = 1
" let g:syntastic_echo_current_error = 1
" let g:syntastic_cursor_column = 1  
" let g:syntastic_auto_jump = 3
" let g:syntastic_ignore_files = ['\m^/usr/include/', '\m\c\.h$']
" let g:syntastic_mode_map = {
" 	\ "mode": "active",
" 	\ "active_filetypes": ["ruby", "php"],
" 	\ "passive_filetypes": ["puppet"] }
" let g:syntastic_quiet_messages = {
" 	\ "!level":  "errors",
" 	\ "type":    "style",
" 	\ "regex":   '\m\[C03\d\d\]',
" 	\ "file:p":  ['\m^/usr/include/', '\m\c\.h$'] }
" let g:syntastic_extra_filetypes = [ "make" ]
" let g:syntastic_cpp_config_file = '.config_syntastic'


" ConqueGDB configuration
let g:ConqueTerm_Color = 2         " 1: strip color after 200 lines, 2: always with color
let g:ConqueTerm_CloseOnEnd = 1    " close conque when program ends running
let g:ConqueTerm_StartMessages = 1 " display warning messages if conqueTerm is configured incorrectly
let g:ConqueTerm_PyVersion = 2
let g:ConqueTerm_ReadUnfocused = 1
" let g:ConqueGdb_GdbExe = 'arm-none-eabi-gdb'

" setup color scheme for vim and gvim
if has('gui_running')
	set background=dark
	colorscheme badwolf
else
	colorscheme evening3
endif

" COMMANDS ALIAS
ca gdb ConqueGdb

" MAPPINGS

" (CTRL-S) Save file
"nmap <c-s> :w<CR>
"imap <c-s> <c-o><c-s>
" nmap <F2> :w<CR>
" imap <F2> <c-o><F2>

" (CTRL-Q) close file
"nmap <c-q> :q<CR>
"imap <c-q> <c-o><c-q>

" (F4) Build tags of your own project
map <F4> <ESC>:!ctags -R --extra=+fq --c-kinds=+px --fields=+iaS .<cr><cr>

" (F6) create doxygen comment
nmap <F10> <ESC>:Dox<CR>
nmap <F9> <ESC>:DoxAuthor<CR>

" (CTRL-B) Build project
"nmap <C-b> :make<CR>
"nmap <C-b> :make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- uImage<CR>
"nmap <C-b> :make <CR>
nmap <C-b> :make<CR>
imap <C-b> <c-o><c-b>
" nmap <F7>  <C-b>
" imap <F7>  <c-o><F7>

" (F9) Open file explorer
map <silent> <F9> <ESC>:Explore<CR>

" (F12) buffer explorer
noremap <silent> <F12> <ESC>:ToggleBufExplorer<CR>

" (CTRL-T, CTRL-right, CTRL-left, L, H) tabs/buffer management
nnoremap <C-t> <ESC>:tabnew<CR>
map L <ESC>:tabnext<CR>
map H <ESC>:tabprev<CR>
nnoremap <C-Right>  <ESC>:call MyNext()<CR>
nnoremap <C-Left>  <ESC>:call MyPrev()<CR>

" (CTRL-r) open nerd tree
nnoremap <C-r> <ESC>:NERDTreeToggle<CR>

" (CTRL_A, CTRL-I) change to *.C/*.H file 
nnoremap <C-s> :A<CR>
nnoremap <C-i> <ESC>:IH<CR>

" (CTRL-P) go back to previous tag
nnoremap <C-p> <ESC>:pop<CR>

" (CTRL-W ]) Open tag under cursor in new tab
nnoremap <C-W>] <C-W>]:tab split<CR>gT:q<CR>gt 

" shortcut for open/close tag outline of current file
nmap <C-o> :TagbarToggle<CR>

nmap ; :
nmap <silent> , :noh<CR>

imap <F3> <c-x><c-o>

nmap <C-y>k :SyntasticCheck<CR>
nmap <C-y>t :SyntasticToglleMode<CR>
nmap <C-y>r :SyntasticReset<CR>
nmap <C-y>e :Errors<CR>
nmap <C-y>c :lclose<CR>
nmap <C-y>n :lnext<CR>
nmap <C-y>p :lprevious<CR>

" quickfix make next error
nmap <C-l>n :cn<CR>
nmap <C-l>o :copen<CR> 
nmap <C-l>w :cwindow<CR> 
nmap <C-l>c :cclose<CR> 

" conquegdb mappings
nmap <F8> \c
imap <F8> continue<CR>
" nmap <F6> \n
" imap <F6> next<CR>
" nmap <F5> \s
" imap <F5> step<CR>

" salva 
cmap w!! w !sudo tee % >/dev/null

set pastetoggle=<F2>

" default command to invoke CtrlP:
let g:ctrlp_map = '<c-f>'
let g:ctrlp_cmd = 'CtrlP'

" Automatically open, but do not go to (if there are errors) the quickfix /
" location list window, or close it when is has become empty.
"
" Note: Must allow nesting of autocmds to enable any customizations for quickfix
" buffers.
" Note: Normally, :cwindow jumps to the quickfix window if the command opens it
" (but not if it's already open). However, as part of the autocmd, this doesn't
" seem to happen.
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


" create new function
" map q Ivoid <esc>A(void)<CR>{<CR><CR>}<up><tab>

augroup newFileDetection
	autocmd CursorMovedI * call CheckFileType()
augroup END

function CheckFileType()
	if exists("b:countCheck") == 0
		let b:countCheck = 0
	endif
	let b:countCheck += 1
	" Don't start detecting until approx. 20 chars.
	if &filetype == "" && b:countCheck > 20 && b:countCheck < 200
		filetype detect
		" If we’ve exceeded the count threshold (200), OR a filetype has been detected
		" delete the autocmd!
	elseif b:countCheck >= 200 || &filetype != ""
		autocmd! newFileDetection
	endif
endfunction

" hi Function ctermfg=blue
" set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/

" Always show statusline
" set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
" set t_Co=256
set runtimepath+=~/.vim/bundle/vim-snippets/UltiSnips
