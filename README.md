# fasd.vim

## DEPRECATED

If you still want to do this see: https://github.com/nhooyr/dotfiles/blob/4605ab8a76dead31f09b2592838485e1a6445794/.config/nvim/init.vim#L70-L80

## Introduction
This plugin updates the FASD native backend whenever you open a file, allowing you to easily select your most used files.

## FZF integration
Its in my fork of [fzf.vim](https://github.com/nhooyr/fzf.vim) for now. I'll move it here later. You can just copy the code.

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
	\ 'nofile',
	\ 'nowrite',
	\ 'quickfix',
	\ 'terminal',
	\ ]
```
