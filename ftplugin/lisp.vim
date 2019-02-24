iabbrev ;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
iabbrev cdef <C-R>=CommandFunctionSnipplet()<CR><C-O>?efun?e+1<CR>
iabbrev def <C-R>=FunctionSnipplet()<CR><C-O>?efun?e+1<CR>

function! CommandFunctionSnipplet()
  let l:txt = ';;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
              \;;;
              \;;; Command:     TODO
              \;;; Description: TODO
              \;;; Return:      TODO
              \;;; Example:     TODO
              \;;;
              \;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
              \(defun 
              \)'
  return l:txt
endfunction

function! FunctionSnipplet()
  let l:txt = ';;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
              \;;;
              \;;; Function:    TODO
              \;;; Description: TODO
              \;;; Return:      TODO
              \;;; Example:     TODO
              \;;;
              \;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
              \(defun 
              \)'
  return l:txt
endfunction

