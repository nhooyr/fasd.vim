function! fasd#Update()
  let path = expand('%:p')
  if empty(path)
    return
  elseif index(g:fasd_blacklisted_filetypes, &filetype) != -1
    return
  elseif index(g:fasd_blacklisted_buftypes, &buftype) != -1
    return
  endif
  for b in g:fasd_blacklisted_paths
    if path =~# b
      return
    endif
  endfor
  if filereadable(path) || isdirectory(path)
    let cmd = ['fasd', '-A', path]
    if has('nvim')
      call jobstart(cmd)
    elseif has('job')
      call job_start(cmd)
    else
      call system(join(cmd, ' '))
    endif
  endif
endfunction
