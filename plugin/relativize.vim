if exists('g:loaded_relativize') || &compatible || v:version < 703
  finish
endif
let g:loaded_relativize = 1

let g:relativize_enabled = &relativenumber
let g:relativize_with_number = &number

function! s:set_numbers(v)
  if g:relativize_enabled && (&number || &relativenumber)
    let &number = !a:v || g:relativize_with_number
    let &relativenumber = a:v
  endif
endfunction

function! s:toggle()
  if g:relativize_enabled
    call s:set_numbers(0)
    let g:relativize_enabled = 0
  else
    let g:relativize_enabled = 1
    call s:set_numbers(1)
  endif
endfunction

augroup relativize
  autocmd!
  autocmd BufWinEnter * call s:set_numbers(1)
  autocmd BufWinLeave * call s:set_numbers(0)
  autocmd FocusGained * call s:set_numbers(1)
  autocmd FocusLost * call s:set_numbers(0)
  autocmd InsertEnter * call s:set_numbers(0)
  autocmd InsertLeave * call s:set_numbers(1)
  autocmd WinEnter * call s:set_numbers(1)
  autocmd WinLeave * call s:set_numbers(0)
augroup END

command! -bar RelativizeToggle :call s:toggle()
" vim: et sw=2 sts=2 ts=2
