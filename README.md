Installation
============

```bash
# Clone repository
cd ~
mkdir git
cd git
git clone https://github.com/fuglu/dotvim.git

# Link files
cd ~
ln -s git/dotvim/vimrc .vimrc
ln -s git/dotvim/vim .vim

# Install plugins
vim +PlugInstall
```

Plugins
=======

* [ale](https://github.com/w0rp/ale)
* [auto-pairs](https://github.com/jiangmiao/auto-pairs)
* [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim)
* [MatchTag](https://github.com/gregsexton/MatchTag)
* [nerdcommenter](https://github.com/scrooloose/nerdcommenter)
* [nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin)
* [nerdtree](https://github.com/scrooloose/nerdtree)
* [supertab](https://github.com/ervandew/supertab)
* [tlib_vim](https://github.com/tomtom/tlib_vim)
* [vim-addon-mw-utils](https://github.com/MarcWeber/vim-addon-mw-utils)
* [vim-closetag](https://github.com/alvan/vim-closetag)
* [vim-fugitive](https://github.com/tpope/vim-fugitive)
* [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
* [vim-gnupg](https://github.com/jamessan/vim-gnupg)
* [vim-grepper](https://github.com/mhinz/vim-grepper)
* [vim-gutentags](https://github.com/ludovicchabant/vim-gutentags)
* [vim-kamailio-syntax](https://github.com/kamailio/vim-kamailio-syntax)
* [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)
* [vim-polyglot](https://github.com/sheerun/vim-polyglot)
* [vim-rooter](https://github.com/airblade/vim-rooter)
* [vim-snipmate](https://github.com/garbas/vim-snipmate)
* [vim-snippets](https://github.com/honza/vim-snippets)
* [vim-trailing-whitespace](https://github.com/bronson/vim-trailing-whitespace)

vimrc
=====

```vim
" Plugins
" =======

call plug#begin()
	" Editor
	" ------
	Plug 'w0rp/ale'
	Plug 'jiangmiao/auto-pairs'
	Plug 'gregsexton/MatchTag'
	Plug 'scrooloose/nerdcommenter'
	Plug 'ervandew/supertab'
	Plug 'alvan/vim-closetag'
	Plug 'terryma/vim-multiple-cursors'
	Plug 'garbas/vim-snipmate'
		Plug 'tomtom/tlib_vim'
		Plug 'MarcWeber/vim-addon-mw-utils'
		Plug 'honza/vim-snippets'
	Plug 'bronson/vim-trailing-whitespace'

	" Movement
	" --------
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'scrooloose/nerdtree'
	Plug 'mhinz/vim-grepper'
	Plug 'ludovicchabant/vim-gutentags'
	Plug 'airblade/vim-rooter'

	" Language Support
	" ----------------
	Plug 'jamessan/vim-gnupg'
	Plug 'kamailio/vim-kamailio-syntax'
	Plug 'sheerun/vim-polyglot'

	" Git
	" ---
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'tpope/vim-fugitive'
	Plug 'airblade/vim-gitgutter'
call plug#end()



" Plugin configuration
" ====================

" ALE
" ---
let g:ale_fixers = { 'javascript': ['eslint', 'prettier'] }


" Closetag
" --------
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.jsx,*.js,*.tt,*.ejs"


" CtrlP
" -----
let g:ctrlp_match_window = 'top,max:20,order:ttb'
let g:ctrlp_show_hidden = 1
let g:ctrlp_working_path_mode = 'ra'


" Multiple cursors
" ----------------
let g:multi_cursor_exit_from_visual_mode = 0
let g:multi_cursor_exit_from_insert_mode = 0


" NerdCommenter
" -------------
let NERDSpaceDelims = 1


" NerdTree
" --------
let g:NERDTreeDirArrows = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" SuperTab
" --------
let g:SuperTabDefaultCompletionType = '<c-n>'



" Vim config
" ==========

set nocompatible

syntax on
set background=dark
set autowrite
set history=500
set ignorecase
set incsearch
set ruler
set scrolloff=3
set showcmd
set showmatch
set tabpagemax=100
set wildmenu
set clipboard=


" Jump to the last position when reopening a file
" -----------------------------------------------
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
  \| exe "normal g'\"" | endif


" Highlight tabs
" --------------
set list
set listchars=tab:»·
set listchars+=trail:·
set listchars+=extends:>
set listchars+=precedes:<


" Enable spell checking
" ---------------------
set spell
highlight clear SpellBad
highlight SpellBad term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline


" Syntax highlighting for unknown file types
" ------------------------------------------
autocmd BufNewFile,BufRead *.tt setf html
autocmd BufNewFile,BufRead *.phtml setf html
autocmd BufNewFile,BufRead *.ejs setf html




" Shortcuts
" =========

" Switch to next/previous buffer with <Alt-right/left>
" ----------------------------------------------------
map  <a-right> :bn<cr>
imap <a-right> :bn<cr>
vmap <a-right> :bn<cr>
map  <a-left>  :bp<cr>
imap <a-left>  :bp<cr>
vmap <a-left>  :bp<cr>


" Step through the program with <Ctrl-j/k/l>
" ------------------------------------------
map <c-j> zz
map <c-k> :tnext<cr>
map <c-l> <C-T>


" Search with :grep or <Ctrl-f>
" -----------------------------
cabbrev grep <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Grepper -query' : 'grep')<CR>
map <c-f> :Grepper -cword -noprompt<cr>


" Open fuzzy finder with <Ctrl-o>
" -------------------------------
let g:ctrlp_map = '<c-o>'
let g:ctrlp_cmd = 'CtrlP .'
if executable('ag')
	let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
	let g:ctrlp_use_caching = 0
endif


" Open directory view with <Ctrl-p>
" ---------------------------------
map <c-p> :NERDTreeToggle<cr>
imap <c-p> <esc>:NERDTreeToggle<cr>


" Jump to next/previous function with <Ctrl-up/down>
" --------------------------------------------------
autocmd FileType perl           map  <c-up>   ?^sub <cr>zz
autocmd FileType perl           imap <c-up>   <esc>?^sub <cr>zz
autocmd FileType perl           map  <c-down> /^sub <cr>zz
autocmd FileType perl           imap <c-down> <esc>/^sub <cr>zz
autocmd FileType php,javascript map  <c-up>   ?function <cr>zz
autocmd FileType php,javascript imap <c-up>   <esc>?function <cr>zz
autocmd FileType php,javascript map  <c-down> /function <cr>zz
autocmd FileType php,javascript imap <c-down> <esc>/function <cr>zz
autocmd FileType python         map  <c-up>   ?^def <cr>zz
autocmd FileType python         imap <c-up>   <esc>?^def <cr>zz
autocmd FileType python         map  <c-down> /^def <cr>zz
autocmd FileType python         imap <c-down> <esc>/^def <cr>zz


" Move lines up/down with <Alt-up/down>
" -------------------------------------
nnoremap <a-up> :m .-2<CR>==
nnoremap <a-down> :m .+1<CR>==
inoremap <a-up> <Esc>:m .-2<CR>==gi
inoremap <a-down> <Esc>:m .+1<CR>==gi
vnoremap <a-up> :m '<-2<CR>gv=gv
vnoremap <a-down> :m '>+1<CR>gv=gv


" Re factor with <R/L/K>
" ----------------------
let g:multi_cursor_next_key = 'R'
let g:multi_cursor_prev_key = 'L'
let g:multi_cursor_skip_key = 'K'


" Start multiple cursors with <Ctrl-m>
" ------------------------------------
vmap <c-m> R


" Insert debug code with <Ctrl-d>
" -------------------------------
autocmd FileType c          imap <c-d> printf("%s\n", );<left><left>
autocmd FileType java       imap <c-d> System.out.println();<left><left>
autocmd FileType javascript imap <c-d> console.log();<left><left>
autocmd FileType perl       imap <c-d> print Dumper $;<left>
autocmd FileType php        imap <c-d> var_dump($);<left><left>
autocmd FileType python     imap <c-d> import sys; print >> sys.stderr,<space>


" Toggle git blame view with <Ctrl-b>
" -----------------------------------
map <c-b> :Gblame<cr>
imap <c-b> <esc>:Gblame<cr>


" Toggle git status view with <Ctrl-g>
" ------------------------------------
map <c-g> :Gstatus<cr>
imap <c-g> <esc>:Gstatus<cr>


" Fix spelling with <Ctrl-s>
" --------------------------
map <c-s> z=
imap <c-s> <esc>z=


" Write a file using sudo with :w!!
" ---------------------------------
cmap w!! w !sudo tee % >/dev/null


" Toggle paste mode with <F5>
" ---------------------------
set pastetoggle=<F5>


" Toggle comment with <F8>
" ------------------------
map <F8> <leader>c<space>
vmap <F8> <leader>c<space>
imap <F8> <esc><leader>c<space>


" Toggle indentation with <F11>
" -----------------------------
function TabToggle()
  if &expandtab
    set shiftwidth=8
    set softtabstop=0
    set noexpandtab
  else
    set shiftwidth=2
    set softtabstop=2
    set expandtab
  endif
endfunction
map <F11> mz:execute TabToggle()<CR>'z
vmap <F11> mz:execute TabToggle()<CR>'z
imap <F11> <esc>mz:execute TabToggle()<CR>'zi


" Reformat file with <F12>
" ------------------------
map <F12> :ALEFix<cr>
vmap <F12> :ALEFix<cr>
imap <F12> <esc>:ALEFix<cr>i
```

:tada:
