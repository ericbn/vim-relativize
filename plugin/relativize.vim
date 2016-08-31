if exists('g:loaded_relativize') || &compatible || v:version < 703
  finish
endif
let g:loaded_relativize = 1

if !exists('g:relativize_enabled')
  let g:relativize_enabled = 1
endif

function! s:set_relativenumber(rnu)
  if g:relativize_enabled && (&number || &relativenumber)
    let &number = !a:rnu
    let &relativenumber = a:rnu
  endif
endfunction

function! s:toggle()
  if g:relativize_enabled
    call s:set_relativenumber(0)
    let g:relativize_enabled = 0
  else
    let g:relativize_enabled = 1
    call s:set_relativenumber(1)
  endif
endfunction

autocmd BufWinEnter * call s:set_relativenumber(1)
autocmd BufWinLeave * call s:set_relativenumber(0)
autocmd FocusGained * call s:set_relativenumber(1)
autocmd FocusLost * call s:set_relativenumber(0)
autocmd InsertEnter * call s:set_relativenumber(0)
autocmd InsertLeave * call s:set_relativenumber(1)
autocmd WinEnter * call s:set_relativenumber(1)
autocmd WinLeave * call s:set_relativenumber(0)

command! -bar RelativizeToggle :call s:toggle()

set number
