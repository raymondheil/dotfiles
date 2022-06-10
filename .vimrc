" Plugins (vim-plug because I'm wimpy)
call plug#begin()
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-sleuth'
  Plug 'jpalardy/vim-slime'
call plug#end()

" Vim slime settings (paste into tmux buffer)
let g:slime_target = "tmux"
let g:slime_paste_file = tempname()
let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}
" let g:slime_python_ipython = 1

" Tell slime to send the whole python file C-c C-x
:nnoremap C-c C-x :execute 'SlimeSend1 python' expand('%:p')<CR>

" Allow mouse interaction (whee!)
set mouse=a

" Enable line numbers
set number

" Detect filetypes
filetype on

" Make statusline display some simple info
set statusline="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"

" By default, don't wrap lines
set nowrap


