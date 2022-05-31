function! ShFolds()
  let thisline = getline(v:lnum)
  if match(thisline, '^function ') >= 0
    return ">2"
  elseif match(thisline, '^#\+$') >= 0
    return "1"
  elseif match(thisline, '^##') >= 0
    return ">1"
  elseif match(thisline, '^}\s.') >= 0
    return "<2"
  else
    return "="
  endif
endfunction

setlocal foldmethod=expr
setlocal foldexpr=ShFolds()
