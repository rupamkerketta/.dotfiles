" Syntax highlighting for colored texts and fonts
syntax on

" Map Leader set to <Space>
let mapleader=" "

set noerrorbells
set termwinsize=10x0
set showcmd
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number relativenumber
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=90
highlight ColorColumn ctermbg=0 guibg=lightgrey


" Plugins
call plug#begin('~/.vim/plugged')

" File-System explorer
Plug 'preservim/nerdtree'

" Themes
Plug 'rakr/vim-one'
Plug 'morhetz/gruvbox'

" Automatically clear search highlights after you move your cursor.
Plug 'haya14busa/is.vim'

" Autocomplete (supports a number of languages)
Plug 'Valloric/YouCompleteMe'

" StatusLine Simplified
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Markdown preview and language support
Plug 'godlygeek/tabular' | Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()


" Themes and Colors
set termguicolors " For 24-bit true color support
colorscheme gruvbox
set background=dark

set completeopt-=preview

" Cycle through splits.
nnoremap <S-Tab> <C-w>w

" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

" StatusLine - Airline configs (vim-airline/vim-airline)
let g:airline_theme='base16_material_darker'
let g:airline_section_a=airline#section#create(['mode', ' ', 'branch'])
let g:airline_section_z=airline#section#create(['Ln %l', ',', 'Col %c'])

" Markdown preview (iamcco/markdown-preview.nvim)
let g:mkdp_markdown_css='~/.local/lib/github-markdown-css/style.css'

" NERDTree key remaps
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" FZF (Buffers)
nnoremap <silent> <leader>l :Buffers<CR>
nnoremap <silent> <C-p> :FZF<CR>
" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }

" Spell-check Markdown files and Git Commit Messages
autocmd FileType markdown setlocal spell
autocmd FileType gitcommit setlocal spell

" Buffer switching
map <C-Left> :bp<CR>
map <C-Right> :bn<CR>
