function! CFold()
  let currline = getline(v:lnum)
  if match(currline,'^/* DOC$') >= 0
    return '1'
  if match(currline,'^DOC */$') >= 0
    return '<1'
  else
    return '='
  endif
endfunction
function! CFoldText()
  return getline(v:foldstart)
endfunction

setlocal foldmethod=expr
setlocal foldexpr=CFold()
setlocal foldtext=CFoldText()
