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

"Append template to new C++ files
autocmd BufNewFile *.cpp 0r /home/zah/programming/cp-template/src/zah.cpp
autocmd BufNewFile * normal G
autocmd BufNewFile * normal dd

syntax enable
let g:Neosolarized_contrast = "high"
let g:Neosolarized_visibility = 'low'
set termguicolors
set background=light
colorscheme NeoSolarized
highlight Folded guifg=black

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

" YouCompleteMe
let g:ycm_python_interpreter_path = ''
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
			\  'g:ycm_python_interpreter_path',
			\  'g:ycm_python_sys_path'
			\]
let g:ycm_global_ycm_extra_conf = '~/.ycm_global_extra_conf.py'
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_show_diagnostics_ui = 1


"color
hi Normal guifg=#000000
hi Cursor guifg=black guibg=darkgrey
hi Cursor2 guifg=black guibg=black

" nerdtree  F2 open or close the NerdTree
map <F2> :NERDTreeToggle<CR>
let NERDTreeWinSize=25

" AirLine
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline_highlighting_cache = 1
let g:airline_powerline_fonts = 1
