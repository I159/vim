"            ---=== The Great VIM config ===---
"                    *** since 2014 ***

" ISSUES:
" * Multi line surround
" * Not all bracket jumps work

" TO LEARN:
" * Map expression
" * Indent wise movements
" * Insert mode keys

" ----------------------- settings -----------------------------

" Enable plugins
execute pathogen#infect()
colorscheme wombat256mod " Color scheme wombat256
syntax on " Syntax on... Any kind of
filetype plugin indent on " Use indentation scripts located in the indent folder
filetype plugin on " Enable plugin vim scripts located in ftplugin directory

set nocompatible " Disable vi compatibility
set nu " Set line numbers
set confirm " Confirm save on exit
set nowrap " lines will not wrap and only part of long lines will be displayed.
set spell " Spell check
set backspace=2 " Allow backspacing
set tabstop=4 " Short tabs
set shiftwidth=4 " 4 columns text is indented with the reindent operations (<< and >>) and automatic C-style indentation.
set list " Show trailing white spaces
set listchars=trail:.,tab:>- " Show tabs as >-
set cursorline " Highlight current line
set backup " Keep a backup file
set backupdir=/private/tmp " Put backup files to tmp (specific for osx)
set dir=/private/tmp " Put swap files to tmp (specific for osx)
set pastetoggle=<f5> " Toggle paste mode
set foldmethod=syntax " Fold by syntax blocks
set foldlevel=10 " Keep folds opened
set scrolloff=50 " Keep cursor centered

let mapleader = "," " Set leader
let NERDTreeIgnore = ['\.swo$', '\.swp$'] " Let Nerdtree ignore vim backup files
let NERDTreeMapOpenInTab = '\r' " Open files on new buffers
let NERDTreeShowHidden = 1 " Show hidden files
let g:AutoPairsShortcutToggle = '<leader>pp' " Auto pairs toggle
let g:NERDTreeWinSize = 32

" ----------------------- mappings ------------------------------

" Down
nnoremap <C-j> <C-W><C-J>
" Up
nnoremap <C-k> <C-W><C-K>
" Right
nnoremap <C-l> <C-W><C-L>
" Left
nnoremap <C-h> <C-W><C-H>
" Save with ,w
noremap <leader>w :w<CR>
" Exit with ,q
noremap <leader>q :q<CR>
" Save and exit with ,x
noremap <leader>x :wq<CR>
" Toggle NERDTree
map <leader>n :NERDTreeToggle<CR>
" Reset NERDTree
map <leader>N :NERDTree<CR>
" NERDTree default size
map <leader>v :BuffergatorToggle<CR>
" Line break
noremap <leader>lb i<CR><Esc>
" Break line after comma
noremap <leader>ll :s/,/\0\r/g<CR>
" Remove trailing white spaces
noremap <leader>dt :%s/\s\+$//e<CR>
" Reset search highlighting
noremap <F4> :set hlsearch! hlsearch?<CR>
" Show mappings
nnoremap <leader>mp :map<CR>
" Show index
nnoremap <leader>hi :help index<CR>
" Remove brackets in pair
nnoremap <leader>bb %ma%x`ax
" Run checkers
nnoremap <leader>rc :SyntasticCheck<CR>
" Git commit
nnoremap <leader>Gc :Gcommit .<CR>
" Git add to index
nnoremap <leader>Ga :Gedit<CR>
" Git diff
nnoremap <leader>Gd :Gdiff<CR>
" Git status
nnoremap <leader>Gs :Gstatus<CR>

" WARNING: mac specific
" Make it good and make it better.
inoremap √ <c-r><c-o>+
inoremap ß <esc>A

" Abbreviations
ab retrun return

" Auto commands
" Remember last position of file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
