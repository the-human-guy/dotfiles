" npm install -g import-js 

" For surround check out:
" https://github.com/tpope/vim-surround
" https://github.com/kylechui/nvim-surround
" https://github.com/machakann/vim-sandwich
" https://github.com/echasnovski/mini.nvim/blob/5df3155218807fb6049779bb488f48f77fdd9dcb/readmes/mini-surround.md

call plug#begin('~/.config/nvim/autoload/plug')
        Plug 'preservim/nerdtree'
        Plug 'sainnhe/gruvbox-material'
        Plug 'chriskempson/base16-vim'
        Plug 'mattn/emmet-vim'
        Plug 'nvim-lua/plenary.nvim'
        Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
        Plug 'airblade/vim-rooter'
        Plug 'APZelos/blamer.nvim'
        Plug 'sbdchd/neoformat'
        Plug 'airblade/vim-gitgutter'
        Plug 'mfussenegger/nvim-lint'
        Plug 'williamboman/mason.nvim'
        Plug 'Galooshi/vim-import-js'
call plug#end()
