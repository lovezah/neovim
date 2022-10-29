set number
set relativenumber
set mouse=a 
set ruler
set tabstop=4
set backspace=2
set shiftwidth=4
set termguicolors
syntax on
set foldmethod=syntax
set clipboard+=unnamedplus

" python3 support
let g:python3_host_prog = '/usr/bin/python3.8'

colorscheme NeoSolarized
set background=light

" handle lambda correctly
setlocal cindent
setlocal cino=j1,(0,ws,Ws

source $HOME/.config/nvim/vim-plug/plugins.vim

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'
if executable(s:clip)
	augroup WSLYank
		autocmd!
		autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
	augroup END
endif

let g:ycm_python_interpreter_path = ''
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
			\  'g:ycm_python_interpreter_path',
			\  'g:ycm_python_sys_path'
			\]
let g:ycm_global_ycm_extra_conf = '~/.ycm_global_extra_conf.py'

set termguicolors
hi Cursor guifg=white guibg=steelblue
hi Cursor2 guifg=black guibg=black
set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor50
