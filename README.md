# fasd.vim

## Introduction
This plugin updates the FASD native backend whenever you open a file, allowing you to easily select your most used files.

## Settings
### g:fasd\_blacklisted\_paths
Contains a list of regexps that are matched against the path If matched, the file isn't added to FASD.  
By default it is empty.


### g:fasd\_blacklisted\_filetypes
Contains a list of blacklisted filetypes for FASD.  
By default it's set to

```vim
let g:fasd_blacklisted_filetypes = [
	\ 'fzf',
	\ 'gitcommit',
	\ ]
```


###g:fasd\_blacklisted\_buftypes
Contains a list of blacklisted buftypes.  
By default it's set to
```vim
let g:fasd_blacklisted_buftypes = [
      \ 'help',
      \ ]
```
