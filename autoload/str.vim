function! str#Repeat(str, times)
  if a:times == 1 
    return a:str
  else
    return a:str . StrRepeat(a:str, a:times - 1)
  endif
endfunction
