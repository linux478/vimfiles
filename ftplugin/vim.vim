setlocal fdm=expr
setlocal foldexpr=VimGetFold(v:lnum)

function! VimGetFold( nline )
  if getline(a:nline) =~ '^\vfunction'
    return '>1'
  elseif getline(a:nline) =~ '^\vendfunction'
    return '<1'
  endif
  return '-1'
endfunction
