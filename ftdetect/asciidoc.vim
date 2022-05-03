function! DetectAsciidoc()
  if &filetype ==# 'text' 
    if getline(1) =~ '^='
      setfiletype asciidoc
    endif
  endif
endfunction

augroup filetypedetect
  au BufRead,BufNewFile *.txt call DetectAsciidoc()
augroup END
