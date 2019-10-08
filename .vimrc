if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'sjl/gundo.vim'                                    "Undo utility
Plug 'sjl/badwolf'                                      "Colorscheme
Plug 'itchyny/lightline.vim'                            "Statusline
Plug 'xolox/vim-notes'                                  "Notes
Plug 'xolox/vim-misc'                                   "Notes dependency
Plug 'terryma/vim-multiple-cursors'                     "Multiple Cursors
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }  "Live Latex preview
Plug 'andymass/vim-matchup'                             "Extend % matching for HTML, LaTeX etc.
Plug 'yggdroot/indentline'                              "Show indentation levels
Plug 'tpope/vim-fugitive'                               "Git Wrapper

call plug#end()

" Turn off expansion of characters in latex
set conceallevel=0

" Scroll wheel behaviour
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" Colors
syntax enable
colorscheme badwolf
hi Normal guibg=NONE ctermbg=NONE "transparent background
hi NonText ctermbg=none

" Tabs
set tabstop=4 " number of visual spaces per tab
set softtabstop=4 "number of spaces in tab when editing
set expandtab
set shiftwidth=4 "Sets the indent to 4 spaces

" UI stuff
set number " show line numbers
set noshowcmd " show command in bottom bar
set cursorline "highlight current line
set wildmenu "visual complete for command menu
set lazyredraw " redraw only when necessary
set showmatch "highlight matching brackets
filetype plugin indent on "filetype indent

"Searching
set incsearch "search as characters are entered
set hlsearch " highlight matches
set ignorecase 
set smartcase " search case insensitive unless uppercase characters in string. \C will override

" Folding
set foldenable "folds code blocks
set foldlevelstart=10 "folds only after 10 lines
set foldnestmax=10 "max 10 nested folds
" F2 to open/close folds
nnoremap <F2> za
set foldmethod=indent " folds based on indent level

" Movement
	" move by visual line, not actual
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap j gj
vnoremap k gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <Esc>gja
inoremap <Up> <Esc>gka

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

" Turn on spellcheck
set spelllang=en
set spell

" Wrapping
set wrap
set linebreak

" Statusline stuff
set noshowmode
set laststatus=2
let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ }

" Clipboard

set clipboard=unnamedplus

" Vim Notes

let g:notes_directories = ['~/.vim/Notes', '~/.vim/Shared Notes']

" LaTeX stuff

let g:livepreview_engine = 'pdflatex'

" Ctrl + Backspace
"

" C Stuff
map <F8> :w <CR> :!clear && gcc -g -std=c99 -o %< % && ./%< <CR>
map <F9> :w <CR> :!clear && gcc -g -Wall -std=c99 -o %< % <CR>
map <F7> :w <CR> :!clear && gcc -g -Wall -std=c99 -o %< % && valgrind --leak-check=full --track-origins=yes ./%< <CR>

map <F6> :w <CR> :!clear && python % <CR>
