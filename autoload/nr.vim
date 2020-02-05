function! nr#Len(n)
  if a:n < 10
    return 1
  else
   return NrLen(a:n / 10) + 1
  endif
endfunction
