" Pathogen
call pathogen#infect()
call pathogen#helptags()

" Load specific indentation and plugin rules
filetype indent on
filetype plugin on

" Jump to the last position when reopening a file
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
  \| exe "normal g'\"" | endif

" Set highlighting
syntax on
set background=dark

" Show (partial) command in status line
set showcmd

" Show matching brackets
set showmatch

" Incremental search
set incsearch

" Do case insensitive matching
set ignorecase

" Automatically save before commands like :next and :make
set autowrite

" More tabs for `vim -p *`
set tabpagemax=100

" Minimum lines to keep above and below cursor
set scrolloff=3

" Show line and row number
set ruler

" Show wildmenu
set wildmenu

" Spell check
set spell

" Highlight tabs
set list
set listchars=tab:»·
set listchars+=trail:·
set listchars+=extends:>,precedes:<

" Highlight space errors
match Debug /\s\+$/

" CTags file locations
set tags=./.tags;,./tags;
" Jump to tag on <CTRL>-j
map <C-j> zz
" Jump to next tag on <CTRL>-k
map <C-k> :tnext<CR>
" Jump to previous tag on <CTRL>-l
map <C-l> <C-T>

" Position cursor between <> after typing <>
imap <> <><left>

" <ALT-up/down> moves through paragraphs
map [1;3A {
imap [1;3A <esc>{i
map [1;3B }
imap [1;3B <esc>}i

" <CTRL-up/down> moves through functions
autocmd FileType perl map  <C-Up>   ?^sub <CR>zz
autocmd FileType perl imap <C-Up>   <esc>?^sub <CR>zzi
autocmd FileType perl map  <C-Down> /^sub <CR>zz
autocmd FileType perl imap <C-Down> <esc>/^sub <CR>zzi
autocmd FileType php  map  <C-Up>   ?function <CR>zz
autocmd FileType php  imap <C-Up>   <esc>?function <CR>zzi
autocmd FileType php  map  <C-Down> /function <CR>zz
autocmd FileType php  imap <C-Down> <esc>/function <CR>zzi

" <CTRL-d> inserts debug statement
autocmd FileType perl map  <C-d> iprint Dumper $res;<esc>b
autocmd FileType perl imap <C-d> print Dumper $res;<esc>b<insert>
autocmd FileType php  map  <C-d> ivar_dump($res);<esc>bb
autocmd FileType php  imap <C-d> var_dump($res);<esc>bb<insert>
autocmd FileType java map  <C-d> iSystem.out.println(res);<esc>bb
autocmd FileType java imap <C-d> System.out.println(res);<esc>bb<insert>
autocmd FileType c    map  <C-d> iprintf("%s\n", i);<esc>bb
autocmd FileType c    imap <C-d> printf("%s\n", i);<esc>bb<insert>

" F7 find suggestions for bad words
map <F7> z=

" F8 toggles comments on and off
map <F8> gcc
vmap <F8> gc
imap <F8> <esc>gcc<CR>

" F9 triggers make (also a syntax check for perl, php and python files)
autocmd FileType perl compiler perl
autocmd FileType php compiler php
autocmd FileType python compiler python
map <F9> :make<CR>
imap <F9> <esc>:make<CR>
" <SHIFT-F9> jumps to next error
map <S-F9> :cn<CR>
imap <S-F9> <esc>:cn<CR>

" F10 triggers GitBlame
map <F10> :Gblame<CR>
imap <F10> <esc>:Gblame<CR>

" F11 shows paste register
map <F11> :reg<CR>
imap <F11> <esc>:reg<CR>

" F12 opens NERDTree
map <F12> :NERDTreeTabsToggle<CR>
imap <F12> <esc>:NERDTreeTabsToggle<CR>

" K on subs or modules opens perldoc
autocmd FileType perl noremap K :!echo <cWORD> <bar> perl -e '$line = <STDIN>; if ($line =~ /([\w:]+)/){exec("perldoc $1 <bar><bar> perldoc -f $1")}' 2>/dev/null<cr><cr>

" Set phtml and tt files to filetype html to get html syntax highlighting, snippets, etc.
autocmd BufNewFile,BufRead *.tt set filetype=html
autocmd BufNewFile,BufRead *.phtml set filetype=phtml
