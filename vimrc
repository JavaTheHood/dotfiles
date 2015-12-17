set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" =========================================
" Plugins 
" =========================================
Plugin 'gmarik/Vundle.vim' " let vundle manage itself
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-bundler'
Plugin 'thoughtbot/vim-rspec'
Plugin 'encomba/vim-ruby-refactoring'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-repeat'
Plugin 'jiangmiao/auto-pairs'
Plugin 'L9'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/syntastic'
Plugin 'aperezdc/vim-template'
Plugin 'majutsushi/tagbar'
Plugin 'sjl/gundo.vim'
Plugin 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Yggdroot/indentLine'
Plugin 'rking/ag.vim'
Plugin 'jalcine/cmake.vim'
Plugin 'rdnetto/ycm-generator'
Plugin 'ngmy/vim-rubocop'
"Plugin 'sentientmonkey/vim-flog'

call vundle#end()         " required
" =========================================
" Vim Apperance / Code Apperance 
" =========================================
syntax on                 " Enable syntax highlighting
set autoindent
set smartindent           " Smartindent lines
set nowrap                " No Ugly linewrap
set history=500
set smartcase
set showmatch
set title
set ruler
set et
set number
set relativenumber
set incsearch
set autoread
set autowrite
set noswapfile " no stupid swp files
set exrc
set secure

filetype plugin indent on " Enable filetype-specific indenting and plugins

let g:airline_theme='luna'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

" =========================================
" Syntastic configuration
" =========================================
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_save = 1

set nu

set wildmode=longest,list,full
set wildmenu

" =========================================
" Custom Mappings 
" =========================================

nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gd :Gvdiff <CR>
nnoremap <leader>gb :Gblame <CR>

nnoremap <leader>ru :RuboCop <CR>

" set spellchecking
nnoremap <leader>sc :setlocal spell<cr>
nnoremap <C-U> :GundoToggle <CR>
nnoremap <C-N> :NERDTreeToggle<CR>
nnoremap <C-T> :TagbarToggle<CR>

" Disable Arrow keys 
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" Edit vimrc
map <leader>ev :vsplit $MYVIMRC<cr>
map <leader>sv :source $MYVIMRC<cr>

" Edit zshrc
map <leader>ez :vsplit ~/.zshrc<CR>
map <leader>sz :! source ~/.zshrc<CR>
" Tab Mappings
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
nnoremap to  :tabnew<CR>

"shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
" new commands
" write to readonly file
cnoremap sudow w !sudo tee % >/dev/null

" =========================================
" UtilSnips Configurations
" =========================================
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"

" Better key bindings for UtilSnipsExpandTrigger
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" this block of commands has been autogenerated by solarized.vim and
" includes the current, non-default Solarized option values.
" To use, place these commands in your .vimrc file (replacing any
" existing colorscheme commands). See also ":help solarized"

" ------------------------------------------------------------------
" Solarized Colorscheme Config
" ------------------------------------------------------------------
let g:solarized_termcolors=256    "default value is 16
syntax enable
set background=dark
colorscheme solarized
" ------------------------------------------------------------------

" The following items are available options, but do not need to be
" included in your .vimrc as they are currently set to their defaults.

" let g:solarized_termtrans=0
" let g:solarized_degrade=0
" let g:solarized_bold=1
" let g:solarized_underline=1
" let g:solarized_italic=1
" let g:solarized_contrast="normal"
" let g:solarized_visibility="normal"
" let g:solarized_diffmode="normal"
" let g:solarized_hitrail=0
" let g:solarized_menu=1

if has("autocmd")
  filetype on
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType coffee setlocal ts=2 sts=2 sw=2 expandtab colorcolumn=80 
  autocmd FileType markdown setlocal spell spelllang=en complete+=kspell
  autocmd FileType latex setlocal spell spelllang=en complete+=kspell
  autocmd FileType gitcommit setlocal spell spelllang=en complete+=kspell
  autocmd FileType ruby setlocal ts=2 sts=2 sw=2 expandtab colorcolumn=80
  autocmd FileType ruby nnoremap <leader>r !ruby %<cr>
endif
