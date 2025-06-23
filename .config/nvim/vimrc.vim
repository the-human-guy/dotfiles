source ~/.config/nvim/vim-plug/plugins.vim
let mapleader = ","
" Mac-only system clipbard fix 
" set clipboard+=unnamedplus
set clipboard=unnamedplus

" Don't touch unnamed register when pasting over visual selection
xnoremap <expr> p 'pgv"' . v:register . 'y'

" Don't put d-eleted or s-ubstituted text into buffer
" noremap dd "_dd
noremap d "_d
noremap s "_s
noremap c "_c

set mouse=a

" Linux-only system clipboard fix
nnoremap <leader>p "+p
vnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>P "+P
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+y$

" better tabs 
map <leader>tn :tabnew<cr>
map <leader>t<leader> :tabnext
map <leader>tm :tabmove
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
let NERDTreeMapOpenInTab='<ENTER>'
nnoremap <M-]> gt
nnoremap <M-[> gT
nnoremap <C-w>1 1gt
nnoremap <C-w>2 2gt
nnoremap <C-w>3 3gt
nnoremap <C-w>4 4gt
nnoremap <C-w>5 5gt
nnoremap <C-w>6 6gt
nnoremap <C-w>7 7gt
nnoremap <C-w>8 8gt
nnoremap <C-w>9 9gt
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt

" Hotkey for :mksession to save session (restore with vim -S)
	map <C-w>s :mksession!<ENTER>
" Hotkey for ./Session.vim restoration
	map <C-w>r :source ./Session.vim<ENTER>
" Hotkey for ../Session.vim restoration
	map <C-w>R :source ../Session.vim<ENTER>


" Make Vim highlight current line
	set cul

" Enable line Numbers on left, and set their colour.
	set number
	highlight LineNr ctermfg=grey

" Enable syntax highlighting
	syntax on

" Set 256 colour mode and Theme.
	set termguicolors
	let base16_colorspace=256 " Access colors present in 256 colorspace
	set t_Co=256 " Required for the Ubuntu terminal
	let base16_background_transparent=1 " Make vim background transparent to work alongside transparent terminal backgrounds
	" colorscheme base16-greenscreen
	colorscheme gruvbox-material

" Themes todo: check out:
	" https://github.com/folke/tokyonight.nvim?tab=readme-ov-file
	" https://github.com/gruvbox-community/gruvbox
	" https://github.com/ellisonleao/gruvbox.nvim

" Split to right and below
	set splitright
	set splitbelow

" Save on ctrl+s
	nnoremap <c-s> :w<cr>
	inoremap <c-s> <Esc>:w<cr>
	vnoremap <c-s> <Esc>:w<cr>

" Quit on ctrl+q
	nmap <c-q> :q<CR>
	imap <c-q> <Esc>:q<CR>
	vmap <c-q> <Esc>:q<CR>

" Shortcutting split navigation, saving a keypress:
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l


" Show full file path
" 	set statusline+=%F

" Copy file path
	nnoremap <leader>cfp :!echo -n % \| xclip -sel clip<cr>

" Set ignore case on search
	set ic
	set smartcase

" NERDTree show hidden files
	let NERDTreeShowHidden=1

" Auto-open NERDTree
"	autocmd VimEnter * NERDTree

" Reveal current file in NERDTree
	map <leader>e :NERDTreeFind<cr>
	map <leader>nj :NERDTreeToggle<CR>


" ###############################
" # Language Dependent settings #
" ###############################

" Shell
	autocmd FileType sh setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4

" Ruby
	autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" PHP
	autocmd FileType php setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4

" Python
	autocmd BufNewFile,BufRead *.py set filetype=python
	autocmd FileType python setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" X?HTML & XML
	autocmd FileType html,xhtml,xml setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" CSS
	autocmd FileType css setlocal expandtab shiftwidth=2 tabstop=4 softtabstop=4
	autocmd FileType scss setlocal expandtab shiftwidth=2 tabstop=4 softtabstop=4
	autocmd FileType less setlocal expandtab shiftwidth=2 tabstop=4 softtabstop=4

" Makefiles
	autocmd FileType make setlocal noexpandtab

" set filetypes as typescriptreact
	autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact

" JavaScript
" autocmd BufRead,BufNewFile *.json setfiletype javascript
	autocmd FileType javascript,typescript,js,jsx,tsx,typescriptreact setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
	let javascript_enable_domhtmlcss=1
	let g:javascript_plugin_jsdoc = 1
	let g:javascript_plugin_ngdoc = 1

" Git blame
	let g:blamer_enabled = 1

" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Neoformat
	let g:neoformat_try_node_exe = 1
	autocmd BufWritePre *.js,*.jsx,*.tsx,*.ts Neoformat prettier 
