" vim color file
" maintainer:	ito
" last change:	2010-1-9

hi clear
"set background=dark
if exists("syntax_on")
	syntax reset
endif
let g:colors_name = "ito"

hi string                           ctermfg=darkred
hi number                           ctermfg=darkgreen
hi comment							ctermfg=darkgreen
hi constant							ctermfg=magenta
hi identifier						ctermfg=darkcyan
hi operator							ctermfg=brown	
hi preproc							ctermfg=red
hi special							ctermfg=darkmagenta
hi statement						ctermfg=lightblue
hi type								ctermfg=green
hi todo			ctermbg=darkgreen   ctermfg=black
hi error		ctermbg=darkred			ctermfg=lightgray
hi Define	                        ctermfg=yellow
hi Boolean	                        ctermfg=red
hi Function	                        ctermfg=LightCyan
hi Label 	                        ctermfg=darkmagenta
hi Keyword                          ctermfg=red

hi diffadd		                    ctermbg=lightblue			
hi diffchange	                    ctermbg=magenta				
hi diffdelete	ctermfg=red	
hi difftext		                    ctermbg=red					

hi search		ctermfg=red        
hi incsearch	ctermfg=red	
hi visual		ctermfg=cyan

hi warningmsg	ctermfg=red			
hi errormsg		ctermfg=lightred

hi title		ctermfg=red	
hi question		ctermfg=cyan
hi nontext		ctermfg=blue		
hi specialkey	ctermfg=gray	
hi directory    ctermfg=cyan

hi folded	    ctermfg=cyan	
hi linenr		ctermfg=grey
hi statusline	ctermfg=gray
hi statuslinenc ctermfg=gray	

hi pmenu		ctermfg=black ctermbg=lightgray
hi pmenusel		ctermfg=black ctermbg=green
hi pmenuthumb	ctermfg=gray
