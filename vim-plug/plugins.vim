call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'overcache/NeoSolarized'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }

call plug#end()
