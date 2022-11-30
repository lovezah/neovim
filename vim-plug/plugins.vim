call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'overcache/NeoSolarized'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'

call plug#end()
