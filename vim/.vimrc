set encoding=UTF-8

" {{{ Tabs config
set tabstop=8       " The width of a TAB is set to 2.
" Still it is a \t. It is just that
" Vim will interpret it to be having
" a width of 4.

set shiftwidth=2    " Indents will have a width of 2
set softtabstop=2   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces
"set smartindent
set autoindent
filetype plugin indent on
" }}}

filetype plugin on

let mapleader=" "
let localleader=" "

set laststatus=2
set t_Co=256
"set noshowmode

"if filereadable("/usr/share/vim/addons/plugin/powerline.vim")
"  source /usr/share/vim/addons/plugin/powerline.vim
"endif
"if filereadable("/usr/lib/python3.8/site-packages/powerline/bindings/vim/plugin/powerline.vim")
"  source /usr/lib/python3.8/site-packages/powerline/bindings/vim/plugin/powerline.vim
"endif

set guicursor=
set nohlsearch
set hidden
set noerrorbells
set number
set relativenumber
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=16
set noshowmode
set signcolumn=yes
set clipboard=unnamedplus

"set virtualedit=all

" do not auto complete
set completeopt=noinsert,noselect

"set mouse=a

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" auto changes to the dir of the current file
set autochdir

set colorcolumn=80

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Themes / Colorschemes
Plug 'sjl/badwolf'
Plug 'gruvbox-community/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'sickill/vim-monokai'

" Shell / Vim
"Plug 'powerline/powerline'
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
" If you want to display icons, then use one of these plugins:
Plug 'kyazdani42/nvim-web-devicons' " lua
Plug 'ryanoasis/vim-devicons' " vimscript


"Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Git wrapper
Plug 'tpope/vim-fugitive'
"Plug 'octol/vim-cpp-enhanced-highlight'
"Plug 'ycm-core/YouCompleteMe'
Plug 'lervag/vimtex'

" LSP
Plug 'neovim/nvim-lspconfig'
"Plug 'prabirshrestha/vim-lsp'
"Plug 'mattn/vim-lsp-settings'
"Plug 'prabirshrestha/asyncomplete.vim'
"Plug 'prabirshrestha/asyncomplete-lsp.vim'

Plug 'tpope/vim-dispatch'

" Autoformat
Plug 'Chiel92/vim-autoformat'

" Improve discovery of project root
Plug 'airblade/vim-rooter'

" Initialize plugin system
call plug#end()

colorscheme gruvbox
colorscheme badwolf
let g:badwolf_tabline = 0

set termguicolors     " enable true colors support
let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

"colorscheme monokai

fun! TrimWhitespace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun


augroup CARREIRA
  autocmd!
  autocmd BufWritePre * :call TrimWhitespace()
  "autocmd BufWritePre * :Autoformat
augroup END

"nnoremap <Leader>b :ls<CR>:b<Space>
"nnoremap <Leader>f :FZF<CR>
nnoremap <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>


" Save shortcuts
nmap <c-s> :w<CR>
vmap <c-s> <Esc><c-s>gv
imap <c-s> <Esc><c-s>


" Move lines up and down
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

" loading the plugin
let g:webdevicons_enable = 1
"let g:asyncomplete_auto_completeopt = 0

luafile ~/.vim/lsp-config.lua
"luafile ~/.vim/galaxyline-evil.lua
luafile ~/.vim/galaxyline-evilline.lua
