setlocal shiftwidth=4
setlocal tabstop=4
setlocal softtabstop=4

function! MarkdownFoldText()
  let l:title = getline(v:foldstart)
  let l:line_count = (v:foldend - v:foldstart)
  let l:line_text = l:line_count > 1 ? 'lines' : 'line'
  let l:line_text = '[' . l:line_count ' ' . l:line_text . ']'
  let l:text = l:title
  let l:spacing = &textwidth - len(l:line_text) - len(l:title) - nr#Len(l:line_count) - 1
  let l:text = l:text . str#Repeat(' ',l:spacing) . '[' . l:line_count . ' ' . l:line_text . ']'
  return l:text
endfunction
function! MarkdownFoldExpr()
  let l:line = getline(v:lnum)
  let l:count = len(matchstr(l:line, '^#\+'))

  if l:count > 0
    return '>' . l:count
  else
    return '='
  endif
endfunction


" Use custom fold expression and text.
setlocal foldmethod=expr
setlocal foldexpr=MarkdownFoldExpr()
setlocal foldtext=MarkdownFoldText()
