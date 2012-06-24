" Vim filetype plugin
" Language:     Rdist
" Maintainer:   Dan Lowe (dan@tangledhelix.com)
" URL:          https://github.com/tangledhelix/vim-rdist

if exists('b:did_ftplugin')
  finish
endif

setlocal comments=:#
setlocal commentstring=#%s

let b:undo_ftplugin .= '|setl com< cms<'

