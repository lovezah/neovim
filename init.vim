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
set noswapfile

" python3 support
let g:python3_host_prog = '/usr/bin/python3.8'

syntax enable
let g:Neosolarized_contrast = "high"
let g:Neosolarized_visibility = 'low'
set termguicolors
set background=light
colorscheme NeoSolarized
highlight Folded guifg=black
"highlight FoldColumn guibg=darkgrey guifg=white

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
"hi Cursor guifg=#FFFFFF guibg=#494937
hi Normal guifg=#000000
hi Cursor guifg=black guibg=darkgrey
hi Cursor2 guifg=black guibg=black
