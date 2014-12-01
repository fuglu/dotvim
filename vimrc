" Plugins and plugin config
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'Raimondi/delimitMate'
Plugin 'ap/vim-css-color'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'docunext/closetag.vim'
Plugin 'edsono/vim-matchit'
Plugin 'ervandew/supertab'
Plugin 'fuglu/vim-twig'
Plugin 'garbas/vim-snipmate'
Plugin 'gregsexton/MatchTag'
Plugin 'honza/vim-snippets'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'kien/ctrlp.vim'
let g:ctrlp_match_window = 'top,max:20,order:ttb'
let g:ctrlp_show_hidden = 1
set wildignore+=*.class,*.jar
set wildignore+=*.o,*.so
set wildignore+=*.png,*.jpeg,*.jpg,*.gif
set wildignore+=*.pyc
set wildignore+=*.swp
set wildignore+=*.tags
set wildignore+=*/.git/*
set wildignore+=*/.sass-cache/*
set wildignore+=*/local/*
set wildignore+=*/node_modules/*
set wildignore+=*/vendor/[^(sipgate)]*
set wildignore+=*/build/*
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
let NERDSpaceDelims=1
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
let g:syntastic_enable_perl_checker=1
let g:syntastic_perl_checkers = ['perl', 'perlcritic', 'podchecker']
let g:syntastic_perl_lib_path=[ './lib', './local/lib/perl5' ]
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tokutake/twig-indent'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'

call vundle#end()
filetype plugin indent on


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

" Longer history
set history=500

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

" CTags file locations
set tags=./.tags;,./tags;

" Find tags on <CTRL-j/k> and jump back on <CTRL-l>
map <C-j> zz
map <C-k> :tnext<CR>
map <C-l> <C-T>

" <CTRL-up/down> moves through functions
autocmd FileType python map  <C-Up>   ?^def <CR>zz
autocmd FileType python imap <C-Up>   <esc>?^def <CR>zzi
autocmd FileType python map  <C-Down> /^def <CR>zz
autocmd FileType python imap <C-Down> <esc>/^def <CR>zzi
autocmd FileType perl   map  <C-Up>   ?^sub <CR>zz
autocmd FileType perl   imap <C-Up>   <esc>?^sub <CR>zzi
autocmd FileType perl   map  <C-Down> /^sub <CR>zz
autocmd FileType perl   imap <C-Down> <esc>/^sub <CR>zzi
autocmd FileType php,javascript  map  <C-Up>   ?function <CR>zz
autocmd FileType php,javascript  imap <C-Up>   <esc>?function <CR>zzi
autocmd FileType php,javascript  map  <C-Down> /function <CR>zz
autocmd FileType php,javascript  imap <C-Down> <esc>/function <CR>zzi



" F6 toggles paste
set pastetoggle=<F6>

" F7 find suggestions for bad words
map <F7> z=

" F8 toggles comments
map <F8> <leader>c<space>
vmap <F8> <leader>c<space>
imap <F8> <esc><leader>c<space>

" F9 triggers make
map <F9> :make<CR>
imap <F9> <esc>:make<CR>

" F10 triggers GitBlame
map <F10> :Gblame<CR>
imap <F10> <esc>:Gblame<CR>

" F11 shows paste register
map <F11> :reg<CR>
imap <F11> <esc>:reg<CR>

" F12 opens NERDTree
map <F12> :NERDTreeTabsToggle<CR>
imap <F12> <esc>:NERDTreeTabsToggle<CR>

" Shift F12 opens TagBar
map <S-F12> :TagbarToggle<CR>
imap <S-F12> <esc>:TagbarToggle<CR>

" <CTRL-o> opens CtrlP
map <C-o> :CtrlPLastMode --dir<CR>
imap <C-o> <esc>:CtrlPLastMode --dir<CR>

" <CTRL-d> inserts debug statement
autocmd FileType perl       map  <C-d> <insert>print Dumper $res;<esc>
autocmd FileType perl       imap <C-d> print Dumper $res;
autocmd FileType php        map  <C-d> <insert>var_dump($res);<esc>
autocmd FileType php        imap <C-d> var_dump($res);
autocmd FileType java       map  <C-d> <insert>System.out.println(res);<esc>
autocmd FileType java       imap <C-d> System.out.println(res);
autocmd FileType c          map  <C-d> <insert>printf("%s\n", i);<esc>
autocmd FileType c          imap <C-d> printf("%s\n", i);
autocmd FileType javascript map  <C-d> <insert>console.log(data);<esc>
autocmd FileType javascript imap <C-d> console.log(data);

" K on subs or modules opens perldoc
autocmd FileType perl noremap K :!echo <cWORD> <bar> perl -e '$line = <STDIN>; if ($line =~ /([\w:]+)/){exec("perldoc $1 <bar><bar> perldoc -f $1")}' 2>/dev/null<cr><cr>



" Set some filetypes
autocmd BufNewFile,BufRead *.tt set filetype=html
autocmd BufNewFile,BufRead *.phtml set filetype=html
autocmd BufNewFile,BufRead *.ejs set filetype=html
