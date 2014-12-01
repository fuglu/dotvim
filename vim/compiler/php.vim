" Vim compiler file
" Compiler:	PHP
" Maintainer:	Doug Kearns <djkea2@gus.gscit.monash.edu.au>
" URL:		http://gus.gscit.monash.edu.au/~djkea2/vim/compiler/php.vim
" Last Change:	2004 Nov 27

if exists("current_compiler")
	finish
endif
let current_compiler = "php"

setlocal makeprg=php\ -lq\ %:p

setlocal errorformat=%E<b>Parse\ error</b>:\ %m\ in\ <b>%f</b>\ on\ line\ <b>%l</b><br\ />,
			\%W<b>Notice</b>:\ %m\ in\ <b>%f</b>\ on\ line\ <b>%l</b><br\ />,
			\%EParse\ error:\ %m\ in\ %f\ on\ line\ %l,
			\%WNotice:\ %m\ in\ %f</b>\ on\ line\ %l,
			\%-G%.%#

