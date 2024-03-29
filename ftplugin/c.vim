function! CFoldFindDefinition()
  let nLine= v:foldend
  while nLine > v:foldstart && match(getline(nLine), '^[^ ].*\(;\|) {\)$' ) < 0 
    let nLine = nLine - 1
  endwhile
  return nLine
endfunction
function! CFold()
  let currline = getline(v:lnum)
  if match(currline,'^#') >= 0
    return '0'
  elseif match(currline,'^[^ ]\+.*) {$') >= 0
    return '>1'
  elseif match(currline,'^\/\* DOC$') >= 0
    return '>1'
  elseif match(currline,'^}$') >= 0
    return '1'
  else
    return '='
  endif
endfunction
function! CFoldText()
  let cLine = getline(v:foldstart)
  if match(cLine,'^\/\* DOC') >= 0
    let txt = getline(CFoldFindDefinition())
    let paren = split(txt,'(')
    let words = split(paren[0],' ')
    let return_value = join(words[0:len(words)-2])
    let function_name = words[len(words)-1]
    let parameters = paren[1]
    let txt = return_value . repeat(' ',20-strlen(return_value))
          \ . function_name . repeat(' ',40-strlen(function_name))
          \ . '(' . parameters
  else
    let paren = split(cLine,'(')
    let words = split(paren[0],' ')
    let return_value = join(words[0:len(words)-2])
    let function_name = words[len(words)-1]
    let parameters = paren[1]
    let txt = return_value . repeat(' ',20-strlen(return_value))
          \ . function_name . repeat(' ',40-strlen(function_name))
          \ . '(' . parameters
  endif
  return txt
endfunction

function! FunctionHeader()
  normal 0f(ge"pyiw"oy0f(w"iyi)O/* DOCFunction: pDescription:    TODO�kb�kb�kb Parameter(s):    i�kb�kb�kb Return:    o�kb�kb�kb�kb�kb�kbDOC */?TODOzz
endfunction

nnoremap <leader>fh :call FunctionHeader()

setlocal foldmethod=expr
setlocal foldexpr=CFold()
setlocal foldtext=CFoldText()


" have the header file on top and the corresponding c file below
" save the following one in a register
" run the macro while on the fold in the c file
" the header file must have "/* Here */" in the file for it to work
" yygg/\/\* Here \*\//}P:.,/^DOC \*\//djd}k$F)Da);zz 
