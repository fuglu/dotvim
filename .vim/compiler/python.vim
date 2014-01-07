if exists("current_compiler")
  finish
endif
let current_compiler = "python"

" there is no pipes under windows, vi use temp file
" and as perl outputs to stderr this have to be handled corectly
if has("win32")
	setlocal shellpipe=1>&2\ 2>
endif

setlocal makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"

set errorformat=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
