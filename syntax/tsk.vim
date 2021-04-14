" Vim syntax file
" Language: Tasks
" Maintainer: Julio Gajardo
" Latest Revision: 24 march 2021

if exists("b:current_syntax")
  finish
endif

" syn match todoTask '\w\\n'
" syn match doneTask '.*'
" syn keyword todo TD nextgroup=todoTask skipWhite
" syn keyword done DN nextgroup=doneTask skipWhite
" syn keyword todo TD
" syn keyword done DN
syn region doneTask start='*' end='$'
syn region todoTask start='-' end='$'
syn region abandonedTask start='\~' end='$'
syn region waitingResponse start='+' end='$'
syn region title start='^D' end='$'
syn region title start='THIS' end='$'
syn region title start='NEXT' end='$'
syn region title start='BACKLOG' end='$'
syn region title start='TODAY' end='$'
syn region title start='TOMORROW' end='$'

let b:current_syntax = "tsk"
hi doneTask ctermfg=Green ctermbg=NONE cterm=NONE guifg=#9676ac guibg=NONE gui=italic
hi todoTask ctermfg=White ctermbg=NONE cterm=NONE guifg=#9676ac guibg=NONE gui=italic
hi abandonedTask ctermfg=Magenta ctermbg=NONE cterm=NONE guifg=#9676ac guibg=NONE gui=italic
hi waitingResponse ctermfg=Brown ctermbg=NONE cterm=NONE guifg=#9676ac guibg=NONE gui=italic
hi title ctermfg=Yellow ctermbg=NONE cterm=bold guifg=#9676ac guibg=NONE gui=bold
