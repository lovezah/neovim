call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'overcache/NeoSolarized'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'

call plug#end()
