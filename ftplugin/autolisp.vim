setlocal autowrite
setlocal foldexpr=AutoLispFolds()
setlocal foldmethod=expr
setlocal foldtext=AutoLispText()
"Note: errors.err must be in the current directory of the vim buffer
setlocal makeprg=cat\ errors.err
setlocal errorformat=%tnfo:\ File:\ %f\ Line:\ %l\ --\ %m
setlocal errorformat+=%tarn:\ File:\ %f\ Line:\ %l\ --\ %m
setlocal errorformat+=%trro:\ File:\ %f\ Line:\ %l\ --\ %m
setlocal iskeyword+=45 "45 = -
setlocal iskeyword+=62 "62 = >

command AutolispReload call AutoLispReloadBuild()

augroup autolisp
  autocmd!
  au BufWritePre *.lsp call AutoLispWritePre()
augroup END

inoremap <buffer> <tab> <ESC>
inoremap <buffer> <bar><bar> <ESC>?<FIXME><CR>
inoremap <buffer> <localleader><localleader> <ESC>/<FIXME><CR>
inoremap <buffer> <localleader>d <C-R>=AutoLispFunction()<CR><C-O>?defun?e<CR><C-O>A
inoremap <buffer> <localleader>fh <C-R>=AutoLispGetFunctionHeader()<CR>
nnoremap <buffer> <localleader><localleader> <ESC>/<FIXME><CR>
nnoremap <buffer> <localleader>r :call AutoLispFunctionReplaceDefun()<CR>
nnoremap <buffer> <localleader>s :call AutoLispGetFunctionNameAndParameters()<CR>
nnoremap <buffer> <bar><bar> <ESC>?<FIXME><CR>
nnoremap <buffer> <F5> :upd<bar>call AutoLispReloadBuild()<CR>
nnoremap <buffer> <F6> :vimgrep /^(defun/ % <bar> vert cw 50<CR>


function! AutoLispFolds() "{{{
  let l:thisline = getline(v:lnum)
  let l:nextline = getline(v:lnum + 1)
  if l:thisline =~ '^;\+' "&& l:nextline =~ ';\+'
    return "1"
  elseif thisline =~ '^)'
    return "<1"
  else
    return "-1"
  endif
endfunction "}}}
function! AutoLispFunction() "{{{
  let l:rtn = AutoLispGetFunctionHeader()
  let l:rtn .= "(defun"
  let l:rtn .= "\n)(princ \".\")"
  return l:rtn
endfunction "}}}
function! AutoLispFunctionReplaceDefun() "{{{
  execute "normal 0?Description:?e
kwy$''wwPlD"
endfunction "}}}
function! AutoLispGetFunctionHeader() "{{{
  let l:header = ""
  let l:header .=";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n"
  let l:header .=";;;\n"
  let l:header .=";;; Function:     <FIXME>\n"
  let l:header .=";;; Description:  <FIXME>\n"
  let l:header .=";;; Input:        <FIXME>\n"
  let l:header .=";;; Output:       <FIXME>\n"
  let l:header .=";;;\n"
  let l:header .=";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n"
  return l:header
endfunction "}}}
function! AutoLispGetFunctionNameAndParameters() "{{{
  execute "normal 0WWD/^(defun /e
ly$''A\""
endfunction "}}}
function! AutoLispReloadBuild() "{{{
  let strFilePath = expand("%")
  execute "new"
  call append(0, "Set oAcad = GetObject(,\"AutoCAD.application\")")
  call append(1, "set doc = oAcad.ActiveDocument")
  call append(2, "commandString = \"\(load \"\"")
  call append(3, strFilePath)
  call append(4, "\"\"\) \"")
  call append(5, "doc.SendCommand(commandString)")
  execute "normal! kkkkJJxBhx"
  execute "write temp.vbs"
  execute "!start temp.vbs"
  call delete(expand('%'))
  execute "bdelete!"
endfunction "}}}
function! AutoLispText() "{{{
  return getline(FindNextFuncLineNumber(v:foldstart))
endfunction "}}}
function! AutoLispWritePre() "{{{
  execute "normal mz"
  g/(LOG->\(Enter\|Error\|Info\|Warning\) /s/"\w\+\.lsp" \d\+/\=printf('"%s" %d',expand('%:t'),line("."))/
  execute "normal 'z"
endfunction "}}}
function! FindNextFuncLineNumber (lnum) "{{{
  let l:continue = 1
  let l:current = a:lnum+1
  let l:stopline = v:foldend
  let l:line = getline(l:current)

  while l:continue == 1 && l:current <= l:stopline
    if l:line =~ '\((defun \|;;; Function: \|;;; Command: \)'
      let l:continue = 0
    else
      let l:current += 1
      let l:line = getline(l:current)
    endif
  endwhile
  return l:current
endfunction "}}}
