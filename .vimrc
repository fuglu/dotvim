" Pathogen
call pathogen#infect()
call pathogen#helptags()

"
" Mixed vim stuff
"  Set highlighting
syntax on
set background=dark
"  Show (partial) command in status line
set showcmd
"  Show matching brackets
set showmatch
"  Incremental search
set incsearch
"  Do case insensitive matching
set ignorecase
"  Automatically save before commands like :next and :make
set autowrite
"  Disable clipboard
set clipboard=
"  More tabs for `vim -p *`
set tabpagemax=100
"  Minimum lines to keep above and below cursor
set scrolloff=3
"  Show line and row number
set ruler
"  Show wildmenu
set wildmenu
"  Spell check
set spell
"  Highlight HACK
match Error /HACK/
"  Highlight space errors
match Debug /\s\+$/
"  Highlight tabs
set list                   " enable display of tabs and eol
set listchars=tab:»·       " show a tab as »··· (digraphs: »=^K>>, ·=^K~.)
set listchars+=trail:·
set listchars+=extends:>,precedes:<
"  Show long lines
if version >= 703
	set colorcolumn=121
else
	highlight OverLength ctermbg=red
	autocmd BufWinEnter,BufRead * match OverLength /\%121v.\+/
endif
"  Search for help files in ~/.vim/doc
"  Jump to the last position when reopening a file
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
  \| exe "normal g'\"" | endif
"  Load specific indentation and plugin rules
filetype indent on
filetype plugin on



" CTAGS
"  Tag locations
set tags=.tags,tags,~/.tags
"  Jump to tag on <CTRL>-j
map <C-j>	zz
"  Jump to next tag on <CTRL>-k
map <C-k>	:tnext<CR>
"  Jump to previous tag on <CTRL>-l
map <C-l>	<C-T>
"  Show full tag
set showfulltag



" COMPILER
"  PERL
autocmd FileType perl compiler perl
"  PHP
autocmd FileType php compiler php



" Global move and insert maps
"  <ALT>-up/down moves through paragraphs
map [1;3A	{
imap [1;3A	<esc>{i
map [1;3B	}
imap [1;3B	<esc>}i
"  <ALT>-left/right increases/decrease vsplit windows
map [1;3C	<C-W>>
imap [1;3C	<C-W>>
map [1;3D	<C-W><
imap [1;3D	<C-W><
"  Enclosing
"   Position cursor between '' after typing ''
imap '' ''<left>
"   Position cursor between "" after typing ""
imap "" ""<left>
"   Position cursor between <> after typing <>
imap <> <><left>
"   Position cursor between () after typing ()
imap () ()<left>
"   Position cursor between [] after typing []
imap [] []<left>
"   Position cursor between {} after typing {}
imap {} {}<left>
"   Press <CTRL>-{ to get indented {}
imap  {<CR>}<ESC>O
map  i{<CR>}<ESC><up>

" Specific move and insert maps
"  PERL
"   <CTRL>-d inserts $self->{logger}->dumper($res);
autocmd FileType perl map <C-d>		i$self->{logger}->dumper($res);<esc>bb
autocmd FileType perl imap <C-d>	$self->{logger}->dumper($res);<esc>bb<insert>
"   <CTRL>-up/down moves through subs
autocmd FileType perl map <C-Up>	?^sub <CR>zz
autocmd FileType perl imap <C-Up>	<esc>?^sub <CR>zzi
autocmd FileType perl map <C-Down>	/^sub <CR>zz
autocmd FileType perl imap <C-Down>	<esc>/^sub <CR>zzi
"   K on subs or modules opens perldoc
autocmd FileType perl noremap K :!echo <cWORD> <cword> <bar> perl -e '$line = <STDIN>; if ($line =~ /(\w+::\w+)/){exec("perldoc $1")} elsif($line =~ /(\w+)/){exec "perldoc -f $1 <bar><bar> perldoc $1"}'<cr><cr>
"  PHP
"   <CTRL>-d inserts Zend_Debug::dump($res);
autocmd FileType php map <C-d>		iZend_Debug::dump($res);<esc>bb<right>
autocmd FileType php imap <C-d>		Zend_Debug::dump($res);<esc>bb<right><insert>
"   <CTRL>-up/down moves through functions
autocmd FileType php map <C-Up>		?function <CR>zz
autocmd FileType php imap <C-Up>	<esc>?function <CR>zzi
autocmd FileType php map <C-Down>	/function <CR>zz
autocmd FileType php imap <C-Down>	<esc>/function <CR>zzi
"  JAVA
"   <CTRL>-d inserts System.out.println(res);
autocmd FileType java map <C-d>		iSystem.out.println(res);<esc>bb
autocmd FileType java imap <C-d>	System.out.println(res);<esc>bb<insert>
"  C
"   <CTRL>-d inserts printf("%i\n", i)
autocmd FileType c map <C-d>	iprintf("%i\n", i);<esc>bb
autocmd FileType c imap <C-d>	printf("%i\n", i);<esc>bb<insert>



" Command maps
"  Spell
"   F7 find suggestions for bad words
map <F7>	z=

"  TComment
"   F8 toggles comments on and off
map <F8>	gcc
vmap <F8>	gc

"  MAKE
"   F9 triggers make
map <F9>	:make<CR>
imap <F9>	<esc>:make<CR>

"  GIT
"   <CTRL><SHIFT>-F9 triggers GitBlame
map <C-S-F9>	:Gblame<CR>
imap <C-S-F9>	<esc>:Gblame<CR>

"  NERDTree
"   F12 opens NERDTree
map <F12>	:NERDTreeToggle<CR>
imap <F12>	<esc>:NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1

"  Buffer Explorer / Browser 
"   <SHIFT>-F12 opens bufexplorer
map <S-F12>	\be
imap <S-F12>	<esc>\be

"  Register
"   <CTRL><SHIFT>-F12 shows paste register
map <C-S-F12>	:reg<CR>
imap <C-S-F12>	<esc>:reg<CR>
