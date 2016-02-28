if exists('g:loaded_fasd')
  finish
endif
let g:loaded_fasd = 1

if !exists('g:fasd_blacklisted_paths')
  let g:fasd_blacklisted_paths = [
        \ ]
endif
if !exists('g:fasd_blacklisted_filetypes')
  let g:fasd_blacklisted_filetypes = [
        \ 'fzf',
        \ 'gitcommit',
        \ ]
endif
if !exists('g:fasd_blacklisted_buftypes')
  let g:fasd_blacklisted_buftypes = [
        \ 'help',
        \ 'nofile',
        \ 'nowrite',
        \ 'quickfix',
        \ 'terminal',
        \ ]
endif

augroup _fasd
  autocmd!
  autocmd BufWinEnter,BufFilePost * call fasd#Update()
augroup END
