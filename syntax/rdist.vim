" Vim syntax file
" Language:     Rdist
" Maintainer:   Dan Lowe <dan@tangledhelix.com>
" Last Change:  4 Dec 2011
" URL:          https://github.com/tangledhelix/vim-rdist

if exists('b:current_syntax')
	finish
endif

syn match rdistComment /\m#.*/ contains=rdistTodo
syn keyword rdistTodo TODO FIX FIXME NOTE XXX WARNING contained

syn region rdistString start=/\m"/hs=s+1 skip=/\m\\"/ end=/\m"/he=e-1
syn region rdistString start=/\m'/hs=s+1 skip=/\m\\'/ end=/\m'/he=e-1

syn keyword rdistCommand cmdspecial except except_pat install notify special nextgroup=rdistCommandOption
syn match rdistCommandOption /\m\<-o\S\+/

syn match rdistVariable /\m${[a-zA-Z0-9_]\+}/

syn match rdistRule /\m^[a-zA-Z0-9_.-]\+\s*:/he=e-1

command -nargs=+ HiLink hi def link <args>

HiLink rdistComment Comment
HiLink rdistTodo Todo
HiLink rdistString String
HiLink rdistCommand Statement
HiLink rdistVariable Identifier
HiLink rdistRule Function

" No good Vim syntax fit for this, IMO. Calling it a PreProc so it's
" colored differently than the rdistCommand that precedes it.
HiLink rdistCommandOption PreProc

delcommand HiLink

let b:current_syntax = 'rdist'

