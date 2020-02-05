function! str#Repeat(str, times)
  if a:times == 1 
    return a:str
  else
    return a:str . str#Repeat(a:str, a:times - 1)
  endif
endfunction
