" File: scnvim/autoload/document.vim
" Author: David Granström
" Description: scnvim document

function! scnvim#document#set_current_path() abort
  if scnvim#sclang#is_running()
    let path = expand('%:p')
    let cmd = printf('SCNvim.currentPath = "%s"', path)
    call scnvim#sclang#send_silent(cmd)
  endif
endfunction
